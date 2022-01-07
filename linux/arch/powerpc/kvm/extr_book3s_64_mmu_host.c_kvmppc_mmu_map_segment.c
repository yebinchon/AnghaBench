
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
typedef int u64 ;
struct kvmppc_sid_map {int guest_esid; int host_vsid; } ;
struct kvmppc_book3s_shadow_vcpu {TYPE_3__* slb; } ;
struct TYPE_5__ {scalar_t__ (* esid_to_vsid ) (struct kvm_vcpu*,int,int*) ;} ;
struct TYPE_6__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_8__ {int sllp; } ;
struct TYPE_7__ {int esid; int vsid; } ;


 int ENOENT ;
 int ESID_MASK ;
 size_t MMU_PAGE_64K ;
 int SID_SHIFT ;
 int SLB_ESID_V ;
 int SLB_VSID_KP ;
 int SLB_VSID_USER ;
 int VSID_64K ;
 struct kvmppc_sid_map* create_sid_map (struct kvm_vcpu*,int) ;
 struct kvmppc_sid_map* find_sid_vsid (struct kvm_vcpu*,int) ;
 int kvmppc_mmu_next_segment (struct kvm_vcpu*,int) ;
 TYPE_4__* mmu_psize_defs ;
 scalar_t__ stub1 (struct kvm_vcpu*,int,int*) ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;
 int trace_kvm_book3s_slbmte (int,int) ;

int kvmppc_mmu_map_segment(struct kvm_vcpu *vcpu, ulong eaddr)
{
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
 u64 esid = eaddr >> SID_SHIFT;
 u64 slb_esid = (eaddr & ESID_MASK) | SLB_ESID_V;
 u64 slb_vsid = SLB_VSID_USER;
 u64 gvsid;
 int slb_index;
 struct kvmppc_sid_map *map;
 int r = 0;

 slb_index = kvmppc_mmu_next_segment(vcpu, eaddr & ESID_MASK);

 if (vcpu->arch.mmu.esid_to_vsid(vcpu, esid, &gvsid)) {

  svcpu->slb[slb_index].esid = 0;
  r = -ENOENT;
  goto out;
 }

 map = find_sid_vsid(vcpu, gvsid);
 if (!map)
  map = create_sid_map(vcpu, gvsid);

 map->guest_esid = esid;

 slb_vsid |= (map->host_vsid << 12);
 slb_vsid &= ~SLB_VSID_KP;
 slb_esid |= slb_index;







 svcpu->slb[slb_index].esid = slb_esid;
 svcpu->slb[slb_index].vsid = slb_vsid;

 trace_kvm_book3s_slbmte(slb_vsid, slb_esid);

out:
 svcpu_put(svcpu);
 return r;
}
