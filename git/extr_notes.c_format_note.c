
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {char* ref; int initialized; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int GIT_NOTES_DEFAULT_REF ;
 int OBJ_BLOB ;
 struct notes_tree default_notes_tree ;
 int free (char*) ;
 struct object_id* get_note (struct notes_tree*,struct object_id const*) ;
 int init_notes (struct notes_tree*,int *,int *,int ) ;
 int is_encoding_utf8 (char const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 char* reencode_string (char*,char const*,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_add (struct strbuf*,char*,unsigned long) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strchrnul (char*,char) ;
 int strcmp (char const*,int ) ;
 unsigned long strlen (char*) ;

__attribute__((used)) static void format_note(struct notes_tree *t, const struct object_id *object_oid,
   struct strbuf *sb, const char *output_encoding, int raw)
{
 static const char utf8[] = "utf-8";
 const struct object_id *oid;
 char *msg, *msg_p;
 unsigned long linelen, msglen;
 enum object_type type;

 if (!t)
  t = &default_notes_tree;
 if (!t->initialized)
  init_notes(t, ((void*)0), ((void*)0), 0);

 oid = get_note(t, object_oid);
 if (!oid)
  return;

 if (!(msg = read_object_file(oid, &type, &msglen)) || type != OBJ_BLOB) {
  free(msg);
  return;
 }

 if (output_encoding && *output_encoding &&
     !is_encoding_utf8(output_encoding)) {
  char *reencoded = reencode_string(msg, output_encoding, utf8);
  if (reencoded) {
   free(msg);
   msg = reencoded;
   msglen = strlen(msg);
  }
 }


 if (msglen && msg[msglen - 1] == '\n')
  msglen--;

 if (!raw) {
  const char *ref = t->ref;
  if (!ref || !strcmp(ref, GIT_NOTES_DEFAULT_REF)) {
   strbuf_addstr(sb, "\nNotes:\n");
  } else {
   if (starts_with(ref, "refs/"))
    ref += 5;
   if (starts_with(ref, "notes/"))
    ref += 6;
   strbuf_addf(sb, "\nNotes (%s):\n", ref);
  }
 }

 for (msg_p = msg; msg_p < msg + msglen; msg_p += linelen + 1) {
  linelen = strchrnul(msg_p, '\n') - msg_p;

  if (!raw)
   strbuf_addstr(sb, "    ");
  strbuf_add(sb, msg_p, linelen);
  strbuf_addch(sb, '\n');
 }

 free(msg);
}
