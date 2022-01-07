
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned int* tree_depth; struct object_entry* objects; int nr_alloc; } ;
struct object_entry {int dummy; } ;


 int CALLOC_ARRAY (unsigned int*,int ) ;

__attribute__((used)) static inline void oe_set_tree_depth(struct packing_data *pack,
         struct object_entry *e,
         unsigned int tree_depth)
{
 if (!pack->tree_depth)
  CALLOC_ARRAY(pack->tree_depth, pack->nr_alloc);
 pack->tree_depth[e - pack->objects] = tree_depth;
}
