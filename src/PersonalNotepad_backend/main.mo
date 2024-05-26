import Buffer "mo:base/Buffer";
import Text "mo:base/Text";

actor Notepad {
  private var notes : Buffer.Buffer<Text> = Buffer.Buffer(0);

  public func addNote(note: Text) {
    notes.add(note);
  };

  public func getNotes() : async [Text] {
    return notes.toArray();
  };

  public func clearNotes() {
    notes.clear();
  };
}
