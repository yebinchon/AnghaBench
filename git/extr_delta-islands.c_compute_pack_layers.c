
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct packing_data {size_t nr_objects; struct object_entry* objects; } ;
struct TYPE_2__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct island_bitmap {int dummy; } ;
typedef scalar_t__ khiter_t ;


 int core_island_name ;
 scalar_t__ island_bitmap_get (struct island_bitmap*,int ) ;
 int island_counter_core ;
 int island_marks ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,int ) ;
 struct island_bitmap* kh_value (int ,scalar_t__) ;
 int oe_set_layer (struct packing_data*,struct object_entry*,int) ;

int compute_pack_layers(struct packing_data *to_pack)
{
 uint32_t i;

 if (!core_island_name || !island_marks)
  return 1;

 for (i = 0; i < to_pack->nr_objects; ++i) {
  struct object_entry *entry = &to_pack->objects[i];
  khiter_t pos = kh_get_oid_map(island_marks, entry->idx.oid);

  oe_set_layer(to_pack, entry, 1);

  if (pos < kh_end(island_marks)) {
   struct island_bitmap *bitmap = kh_value(island_marks, pos);

   if (island_bitmap_get(bitmap, island_counter_core))
    oe_set_layer(to_pack, entry, 0);
  }
 }

 return 2;
}
