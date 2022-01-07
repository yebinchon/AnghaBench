
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned long* delta_size; struct object_entry const* objects; } ;
struct object_entry {unsigned long delta_size_; scalar_t__ delta_size_valid; } ;



__attribute__((used)) static inline unsigned long oe_delta_size(struct packing_data *pack,
       const struct object_entry *e)
{
 if (e->delta_size_valid)
  return e->delta_size_;
 return pack->delta_size[e - pack->objects];
}
