
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* is_dcbz32 ) (struct kvm_vcpu*) ;} ;
struct TYPE_6__ {int hflags; int pvr; TYPE_1__ mmu; int cpu_type; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_8__ {int platform; } ;
struct TYPE_7__ {int hior; int msr_mask; int hior_explicit; } ;


 int BOOK3S_HFLAG_DCBZ32 ;
 int BOOK3S_HFLAG_MULTI_PGSIZE ;
 int BOOK3S_HFLAG_NATIVE_PS ;
 int BOOK3S_HFLAG_NEW_TLBIE ;
 int BOOK3S_HFLAG_SLB ;
 int KVM_CPU_3S_32 ;
 int KVM_CPU_3S_64 ;
 int MSR_FE0 ;
 int MSR_FE1 ;
 int MSR_HV ;







 int PVR_VER (int) ;
 int SPRN_HID2_GEKKO ;
 TYPE_4__* cur_cpu_spec ;
 int kvmppc_mmu_book3s_32_init (struct kvm_vcpu*) ;
 int kvmppc_mmu_book3s_64_init (struct kvm_vcpu*) ;
 int kvmppc_sanity_check (struct kvm_vcpu*) ;
 int mfmsr () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int strcmp (int ,char*) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;
 TYPE_3__* to_book3s (struct kvm_vcpu*) ;

void kvmppc_set_pvr_pr(struct kvm_vcpu *vcpu, u32 pvr)
{
 u32 host_pvr;

 vcpu->arch.hflags &= ~BOOK3S_HFLAG_SLB;
 vcpu->arch.pvr = pvr;
 {
  kvmppc_mmu_book3s_32_init(vcpu);
  if (!to_book3s(vcpu)->hior_explicit)
   to_book3s(vcpu)->hior = 0;
  to_book3s(vcpu)->msr_mask = 0xffffffffULL;
  vcpu->arch.cpu_type = KVM_CPU_3S_32;
 }

 kvmppc_sanity_check(vcpu);



 vcpu->arch.hflags &= ~BOOK3S_HFLAG_DCBZ32;
 if (vcpu->arch.mmu.is_dcbz32(vcpu) && (mfmsr() & MSR_HV) &&
     !strcmp(cur_cpu_spec->platform, "ppc970"))
  vcpu->arch.hflags |= BOOK3S_HFLAG_DCBZ32;



 if (!strcmp(cur_cpu_spec->platform, "ppc-cell-be"))
  to_book3s(vcpu)->msr_mask &= ~(MSR_FE0 | MSR_FE1);
 switch (PVR_VER(pvr)) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  vcpu->arch.hflags |= BOOK3S_HFLAG_MULTI_PGSIZE |
   BOOK3S_HFLAG_NEW_TLBIE;
  break;
 }







 asm ( "mfpvr %0" : "=r"(host_pvr));
 switch (host_pvr) {
 case 0x00080200:
 case 0x00088202:
 case 0x70000100:
 case 0x00080100:
 case 0x00083203:
 case 0x00083213:
 case 0x00083204:
 case 0x00083214:
 case 0x00087200:
  vcpu->arch.hflags |= BOOK3S_HFLAG_NATIVE_PS;

  mtspr(SPRN_HID2_GEKKO, mfspr(SPRN_HID2_GEKKO) | (1 << 29));
 }
}
