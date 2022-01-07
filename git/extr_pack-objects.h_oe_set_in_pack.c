
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct object_entry* objects; struct packed_git** in_pack; scalar_t__ in_pack_by_idx; } ;
struct packed_git {scalar_t__ index; } ;
struct object_entry {scalar_t__ in_pack_idx; } ;


 int oe_map_new_pack (struct packing_data*) ;

__attribute__((used)) static inline void oe_set_in_pack(struct packing_data *pack,
      struct object_entry *e,
      struct packed_git *p)
{
 if (!p->index)
  oe_map_new_pack(pack);
 if (pack->in_pack_by_idx)
  e->in_pack_idx = p->index;
 else
  pack->in_pack[e - pack->objects] = p;
}
