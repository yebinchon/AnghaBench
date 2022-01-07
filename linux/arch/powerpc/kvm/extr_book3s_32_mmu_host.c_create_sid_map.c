
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u16 ;
struct kvmppc_vcpu_book3s {size_t vsid_next; int * vsid_pool; struct kvmppc_sid_map* sid_map; } ;
struct kvmppc_sid_map {int valid; int guest_vsid; int host_vsid; } ;
struct kvm_vcpu {int dummy; } ;


 int MSR_PR ;
 size_t SID_MAP_MASK ;
 int SID_MAP_NUM ;
 size_t VSID_POOL_SIZE ;
 int VSID_PR ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_mmu_flush_segments (struct kvm_vcpu*) ;
 int kvmppc_mmu_pte_flush (struct kvm_vcpu*,int ,int ) ;
 size_t kvmppc_sid_hash (struct kvm_vcpu*,int ) ;
 int memset (struct kvmppc_sid_map*,int ,int) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static struct kvmppc_sid_map *create_sid_map(struct kvm_vcpu *vcpu, u64 gvsid)
{
 struct kvmppc_sid_map *map;
 struct kvmppc_vcpu_book3s *vcpu_book3s = to_book3s(vcpu);
 u16 sid_map_mask;
 static int backwards_map = 0;

 if (kvmppc_get_msr(vcpu) & MSR_PR)
  gvsid |= VSID_PR;




 sid_map_mask = kvmppc_sid_hash(vcpu, gvsid);
 if (backwards_map)
  sid_map_mask = SID_MAP_MASK - sid_map_mask;

 map = &to_book3s(vcpu)->sid_map[sid_map_mask];


 backwards_map = !backwards_map;


 if (vcpu_book3s->vsid_next >= VSID_POOL_SIZE) {
  vcpu_book3s->vsid_next = 0;
  memset(vcpu_book3s->sid_map, 0,
         sizeof(struct kvmppc_sid_map) * SID_MAP_NUM);
  kvmppc_mmu_pte_flush(vcpu, 0, 0);
  kvmppc_mmu_flush_segments(vcpu);
 }
 map->host_vsid = vcpu_book3s->vsid_pool[vcpu_book3s->vsid_next];
 vcpu_book3s->vsid_next++;

 map->guest_vsid = gvsid;
 map->valid = 1;

 return map;
}
