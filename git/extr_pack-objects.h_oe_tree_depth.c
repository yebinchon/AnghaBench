
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned int* tree_depth; struct object_entry* objects; } ;
struct object_entry {int dummy; } ;



__attribute__((used)) static inline unsigned int oe_tree_depth(struct packing_data *pack,
      struct object_entry *e)
{
 if (!pack->tree_depth)
  return 0;
 return pack->tree_depth[e - pack->objects];
}
