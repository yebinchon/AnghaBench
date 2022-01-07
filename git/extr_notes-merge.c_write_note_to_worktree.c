
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int die (char*,int ,int ) ;
 int free (void*) ;
 int oid_to_hex (struct object_id const*) ;
 void* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int write_buf_to_worktree (struct object_id const*,void*,unsigned long) ;

__attribute__((used)) static void write_note_to_worktree(const struct object_id *obj,
       const struct object_id *note)
{
 enum object_type type;
 unsigned long size;
 void *buf = read_object_file(note, &type, &size);

 if (!buf)
  die("cannot read note %s for object %s",
      oid_to_hex(note), oid_to_hex(obj));
 if (type != OBJ_BLOB)
  die("blob expected in note %s for object %s",
      oid_to_hex(note), oid_to_hex(obj));
 write_buf_to_worktree(obj, buf, size);
 free(buf);
}
