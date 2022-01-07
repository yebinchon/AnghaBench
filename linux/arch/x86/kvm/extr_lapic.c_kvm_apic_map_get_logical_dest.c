
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct kvm_lapic {int dummy; } ;
struct kvm_apic_map {int mode; int max_apic_id; struct kvm_lapic*** xapic_cluster_map; struct kvm_lapic** xapic_flat_map; struct kvm_lapic** phys_map; } ;





 int array_index_nospec (int,int ) ;
 int min (int ,unsigned int) ;

__attribute__((used)) static inline bool kvm_apic_map_get_logical_dest(struct kvm_apic_map *map,
  u32 dest_id, struct kvm_lapic ***cluster, u16 *mask) {
 switch (map->mode) {
 case 130: {
  u32 offset = (dest_id >> 16) * 16;
  u32 max_apic_id = map->max_apic_id;

  if (offset <= max_apic_id) {
   u8 cluster_size = min(max_apic_id - offset + 1, 16U);

   offset = array_index_nospec(offset, map->max_apic_id + 1);
   *cluster = &map->phys_map[offset];
   *mask = dest_id & (0xffff >> (16 - cluster_size));
  } else {
   *mask = 0;
  }

  return 1;
  }
 case 128:
  *cluster = map->xapic_flat_map;
  *mask = dest_id & 0xff;
  return 1;
 case 129:
  *cluster = map->xapic_cluster_map[(dest_id >> 4) & 0xf];
  *mask = dest_id & 0xf;
  return 1;
 default:

  return 0;
 }
}
