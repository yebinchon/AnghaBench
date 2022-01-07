
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packing_data {unsigned long oe_delta_size_limit; unsigned long* delta_size; struct object_entry* objects; int nr_alloc; } ;
struct object_entry {unsigned long delta_size_; int delta_size_valid; } ;


 int ALLOC_ARRAY (unsigned long*,int ) ;
 int packing_data_lock (struct packing_data*) ;
 int packing_data_unlock (struct packing_data*) ;

__attribute__((used)) static inline void oe_set_delta_size(struct packing_data *pack,
         struct object_entry *e,
         unsigned long size)
{
 if (size < pack->oe_delta_size_limit) {
  e->delta_size_ = size;
  e->delta_size_valid = 1;
 } else {
  packing_data_lock(pack);
  if (!pack->delta_size)
   ALLOC_ARRAY(pack->delta_size, pack->nr_alloc);
  packing_data_unlock(pack);

  pack->delta_size[e - pack->objects] = size;
  e->delta_size_valid = 0;
 }
}
