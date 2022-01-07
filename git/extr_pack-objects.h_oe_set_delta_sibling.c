
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct object_entry* objects; } ;
struct object_entry {int delta_sibling_idx; } ;



__attribute__((used)) static inline void oe_set_delta_sibling(struct packing_data *pack,
     struct object_entry *e,
     struct object_entry *delta)
{
 if (delta)
  e->delta_sibling_idx = (delta - pack->objects) + 1;
 else
  e->delta_sibling_idx = 0;
}
