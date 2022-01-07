
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct packing_data {size_t nr_objects; int in_pack_by_idx; scalar_t__ objects; int * in_pack; int nr_alloc; } ;


 int FREE_AND_NULL (int ) ;
 int REALLOC_ARRAY (int *,int ) ;
 int oe_in_pack (struct packing_data*,scalar_t__) ;

void oe_map_new_pack(struct packing_data *pack)
{
 uint32_t i;

 REALLOC_ARRAY(pack->in_pack, pack->nr_alloc);

 for (i = 0; i < pack->nr_objects; i++)
  pack->in_pack[i] = oe_in_pack(pack, pack->objects + i);

 FREE_AND_NULL(pack->in_pack_by_idx);
}
