
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; scalar_t__ parsed; } ;
struct tree {TYPE_1__ object; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_TREE ;
 int error (char*,int ) ;
 int free (void*) ;
 int oid_to_hex (int *) ;
 int parse_tree_buffer (struct tree*,void*,unsigned long) ;
 void* read_object_file (int *,int*,unsigned long*) ;

int parse_tree_gently(struct tree *item, int quiet_on_missing)
{
  enum object_type type;
  void *buffer;
  unsigned long size;

 if (item->object.parsed)
  return 0;
 buffer = read_object_file(&item->object.oid, &type, &size);
 if (!buffer)
  return quiet_on_missing ? -1 :
   error("Could not read %s",
        oid_to_hex(&item->object.oid));
 if (type != OBJ_TREE) {
  free(buffer);
  return error("Object %s not a tree",
        oid_to_hex(&item->object.oid));
 }
 return parse_tree_buffer(item, buffer, size);
}
