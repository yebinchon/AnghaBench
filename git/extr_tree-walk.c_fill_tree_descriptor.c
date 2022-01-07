
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int die (char*,int ) ;
 int init_tree_desc (struct tree_desc*,void*,unsigned long) ;
 int oid_to_hex (struct object_id const*) ;
 void* read_object_with_reference (struct repository*,struct object_id const*,int ,unsigned long*,int *) ;
 int tree_type ;

void *fill_tree_descriptor(struct repository *r,
      struct tree_desc *desc,
      const struct object_id *oid)
{
 unsigned long size = 0;
 void *buf = ((void*)0);

 if (oid) {
  buf = read_object_with_reference(r, oid, tree_type, &size, ((void*)0));
  if (!buf)
   die("unable to read tree %s", oid_to_hex(oid));
 }
 init_tree_desc(desc, buf, size);
 return buf;
}
