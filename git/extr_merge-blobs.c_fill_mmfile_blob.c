
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;
struct blob {TYPE_1__ object; } ;
struct TYPE_5__ {unsigned long size; void* ptr; } ;
typedef TYPE_2__ mmfile_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int free (void*) ;
 void* read_object_file (int *,int*,unsigned long*) ;

__attribute__((used)) static int fill_mmfile_blob(mmfile_t *f, struct blob *obj)
{
 void *buf;
 unsigned long size;
 enum object_type type;

 buf = read_object_file(&obj->object.oid, &type, &size);
 if (!buf)
  return -1;
 if (type != OBJ_BLOB) {
  free(buf);
  return -1;
 }
 f->ptr = buf;
 f->size = size;
 return 0;
}
