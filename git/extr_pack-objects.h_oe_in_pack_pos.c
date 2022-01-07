
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned int* in_pack_pos; struct object_entry const* objects; } ;
struct object_entry {int dummy; } ;



__attribute__((used)) static inline unsigned int oe_in_pack_pos(const struct packing_data *pack,
       const struct object_entry *e)
{
 return pack->in_pack_pos[e - pack->objects];
}
