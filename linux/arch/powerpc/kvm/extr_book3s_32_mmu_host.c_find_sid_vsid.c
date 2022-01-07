
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct kvmppc_sid_map {int host_vsid; int guest_vsid; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct kvmppc_sid_map* sid_map; } ;


 int MSR_PR ;
 size_t SID_MAP_MASK ;
 int VSID_PR ;
 int dprintk_sr (char*,int ,...) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 size_t kvmppc_sid_hash (struct kvm_vcpu*,int ) ;
 TYPE_1__* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static struct kvmppc_sid_map *find_sid_vsid(struct kvm_vcpu *vcpu, u64 gvsid)
{
 struct kvmppc_sid_map *map;
 u16 sid_map_mask;

 if (kvmppc_get_msr(vcpu) & MSR_PR)
  gvsid |= VSID_PR;

 sid_map_mask = kvmppc_sid_hash(vcpu, gvsid);
 map = &to_book3s(vcpu)->sid_map[sid_map_mask];
 if (map->guest_vsid == gvsid) {
  dprintk_sr("SR: Searching 0x%llx -> 0x%llx\n",
       gvsid, map->host_vsid);
  return map;
 }

 map = &to_book3s(vcpu)->sid_map[SID_MAP_MASK - sid_map_mask];
 if (map->guest_vsid == gvsid) {
  dprintk_sr("SR: Searching 0x%llx -> 0x%llx\n",
       gvsid, map->host_vsid);
  return map;
 }

 dprintk_sr("SR: Searching 0x%llx -> not found\n", gvsid);
 return ((void*)0);
}
