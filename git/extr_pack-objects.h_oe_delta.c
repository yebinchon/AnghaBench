
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct object_entry* objects; struct object_entry* ext_bases; } ;
struct object_entry {int delta_idx; scalar_t__ ext_base; } ;



__attribute__((used)) static inline struct object_entry *oe_delta(
  const struct packing_data *pack,
  const struct object_entry *e)
{
 if (!e->delta_idx)
  return ((void*)0);
 if (e->ext_base)
  return &pack->ext_bases[e->delta_idx - 1];
 else
  return &pack->objects[e->delta_idx - 1];
}
