
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {struct object_entry const* objects; struct packed_git** in_pack; struct packed_git** in_pack_by_idx; } ;
struct packed_git {int dummy; } ;
struct object_entry {size_t in_pack_idx; } ;



__attribute__((used)) static inline struct packed_git *oe_in_pack(const struct packing_data *pack,
         const struct object_entry *e)
{
 if (pack->in_pack_by_idx)
  return pack->in_pack_by_idx[e->in_pack_idx];
 else
  return pack->in_pack[e - pack->objects];
}
