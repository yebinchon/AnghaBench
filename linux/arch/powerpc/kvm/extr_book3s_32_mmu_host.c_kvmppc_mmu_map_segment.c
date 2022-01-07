
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ulong ;
typedef int u64 ;
typedef size_t u32 ;
struct kvmppc_sid_map {size_t guest_esid; size_t host_vsid; } ;
struct kvmppc_book3s_shadow_vcpu {size_t* sr; } ;
struct TYPE_3__ {scalar_t__ (* esid_to_vsid ) (struct kvm_vcpu*,size_t,int *) ;} ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int ENOENT ;
 size_t SID_SHIFT ;
 size_t SR_INVALID ;
 size_t SR_KP ;
 struct kvmppc_sid_map* create_sid_map (struct kvm_vcpu*,int ) ;
 int dprintk_sr (char*,size_t,size_t) ;
 struct kvmppc_sid_map* find_sid_vsid (struct kvm_vcpu*,int ) ;
 scalar_t__ stub1 (struct kvm_vcpu*,size_t,int *) ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;

int kvmppc_mmu_map_segment(struct kvm_vcpu *vcpu, ulong eaddr)
{
 u32 esid = eaddr >> SID_SHIFT;
 u64 gvsid;
 u32 sr;
 struct kvmppc_sid_map *map;
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
 int r = 0;

 if (vcpu->arch.mmu.esid_to_vsid(vcpu, esid, &gvsid)) {

  svcpu->sr[esid] = SR_INVALID;
  r = -ENOENT;
  goto out;
 }

 map = find_sid_vsid(vcpu, gvsid);
 if (!map)
  map = create_sid_map(vcpu, gvsid);

 map->guest_esid = esid;
 sr = map->host_vsid | SR_KP;
 svcpu->sr[esid] = sr;

 dprintk_sr("MMU: mtsr %d, 0x%x\n", esid, sr);

out:
 svcpu_put(svcpu);
 return r;
}
