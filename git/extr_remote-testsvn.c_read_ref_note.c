
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int FREE_AND_NULL (char*) ;
 int OBJ_BLOB ;
 int error (char*,int ) ;
 int free_notes (int *) ;
 struct object_id* get_note (int *,struct object_id const*) ;
 int init_notes (int *,int ,int *,int ) ;
 int notes_ref ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;

__attribute__((used)) static char *read_ref_note(const struct object_id *oid)
{
 const struct object_id *note_oid;
 char *msg = ((void*)0);
 unsigned long msglen;
 enum object_type type;

 init_notes(((void*)0), notes_ref, ((void*)0), 0);
 if (!(note_oid = get_note(((void*)0), oid)))
  return ((void*)0);
 if (!(msg = read_object_file(note_oid, &type, &msglen)))
  error("Empty notes tree. %s", notes_ref);
 else if (!msglen || type != OBJ_BLOB) {
  error("Note contains unusable content. "
   "Is something else using this notes tree? %s", notes_ref);
  FREE_AND_NULL(msg);
 }
 free_notes(((void*)0));
 return msg;
}
