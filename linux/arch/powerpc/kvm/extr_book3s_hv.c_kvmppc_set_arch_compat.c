
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvmppc_vcore {int arch_compat; unsigned long pcr; int lock; } ;
struct TYPE_2__ {struct kvmppc_vcore* vcore; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_206 ;
 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_ARCH_300 ;
 int EINVAL ;
 unsigned long PCR_ARCH_205 ;
 unsigned long PCR_ARCH_206 ;
 unsigned long PCR_ARCH_207 ;
 unsigned long PCR_ARCH_300 ;
 unsigned long PCR_MASK ;





 scalar_t__ cpu_has_feature (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvmppc_set_arch_compat(struct kvm_vcpu *vcpu, u32 arch_compat)
{
 unsigned long host_pcr_bit = 0, guest_pcr_bit = 0;
 struct kvmppc_vcore *vc = vcpu->arch.vcore;


 if (cpu_has_feature(CPU_FTR_ARCH_300))
  host_pcr_bit = PCR_ARCH_300;
 else if (cpu_has_feature(CPU_FTR_ARCH_207S))
  host_pcr_bit = PCR_ARCH_207;
 else if (cpu_has_feature(CPU_FTR_ARCH_206))
  host_pcr_bit = PCR_ARCH_206;
 else
  host_pcr_bit = PCR_ARCH_205;


 guest_pcr_bit = host_pcr_bit;
 if (arch_compat) {
  switch (arch_compat) {
  case 132:
   guest_pcr_bit = PCR_ARCH_205;
   break;
  case 131:
  case 130:
   guest_pcr_bit = PCR_ARCH_206;
   break;
  case 129:
   guest_pcr_bit = PCR_ARCH_207;
   break;
  case 128:
   guest_pcr_bit = PCR_ARCH_300;
   break;
  default:
   return -EINVAL;
  }
 }


 if (guest_pcr_bit > host_pcr_bit)
  return -EINVAL;

 spin_lock(&vc->lock);
 vc->arch_compat = arch_compat;




 vc->pcr = (host_pcr_bit - guest_pcr_bit) | PCR_MASK;
 spin_unlock(&vc->lock);

 return 0;
}
