
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct object_entry* objects; } ;
struct object_entry {int delta_sibling_idx; } ;



__attribute__((used)) static inline struct object_entry *oe_delta_sibling(
  const struct packing_data *pack,
  const struct object_entry *e)
{
 if (e->delta_sibling_idx)
  return &pack->objects[e->delta_sibling_idx - 1];
 return ((void*)0);
}
