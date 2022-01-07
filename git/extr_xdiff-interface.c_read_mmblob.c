
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_3__ {unsigned long size; int ptr; } ;
typedef TYPE_1__ mmfile_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int die (char*,int ) ;
 int null_oid ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ oideq (struct object_id const*,int *) ;
 int read_object_file (struct object_id const*,int*,unsigned long*) ;
 int xstrdup (char*) ;

void read_mmblob(mmfile_t *ptr, const struct object_id *oid)
{
 unsigned long size;
 enum object_type type;

 if (oideq(oid, &null_oid)) {
  ptr->ptr = xstrdup("");
  ptr->size = 0;
  return;
 }

 ptr->ptr = read_object_file(oid, &type, &size);
 if (!ptr->ptr || type != OBJ_BLOB)
  die("unable to read blob object %s", oid_to_hex(oid));
 ptr->size = size;
}
