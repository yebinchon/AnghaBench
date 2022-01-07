
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hsave_msr; int vm_cr_msr; } ;
struct vcpu_svm {int sysenter_eip; int sysenter_esp; int tsc_aux; int spec_ctrl; int virt_spec_ctrl; int msr_decfg; TYPE_3__ nested; TYPE_2__* vmcb; } ;
struct msr_data {int index; int data; int host_initiated; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int star; int lstar; int cstar; int kernel_gs_base; int sfmask; int sysenter_cs; int dbgctl; int br_from; int br_to; int last_excp_from; int last_excp_to; } ;
struct TYPE_5__ {TYPE_1__ save; } ;
 int X86_FEATURE_AMD_IBRS ;
 int X86_FEATURE_AMD_SSBD ;
 int X86_FEATURE_RDTSCP ;
 int X86_FEATURE_VIRT_SSBD ;
 int boot_cpu_has (int ) ;
 int guest_cpuid_family (struct kvm_vcpu*) ;
 int guest_cpuid_has (struct kvm_vcpu*,int ) ;
 int guest_cpuid_model (struct kvm_vcpu*) ;
 int kvm_get_msr_common (struct kvm_vcpu*,struct msr_data*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_get_msr(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 switch (msr_info->index) {
 case 132:
  msr_info->data = svm->vmcb->save.star;
  break;
 case 137:
  msr_info->data = svm->vmcb->save.sysenter_cs;
  break;
 case 136:
  msr_info->data = svm->sysenter_eip;
  break;
 case 135:
  msr_info->data = svm->sysenter_esp;
  break;
 case 130:
  if (!boot_cpu_has(X86_FEATURE_RDTSCP))
   return 1;
  msr_info->data = svm->tsc_aux;
  break;





 case 143:
  msr_info->data = svm->vmcb->save.dbgctl;
  break;
 case 142:
  msr_info->data = svm->vmcb->save.br_from;
  break;
 case 141:
  msr_info->data = svm->vmcb->save.br_to;
  break;
 case 140:
  msr_info->data = svm->vmcb->save.last_excp_from;
  break;
 case 139:
  msr_info->data = svm->vmcb->save.last_excp_to;
  break;
 case 128:
  msr_info->data = svm->nested.hsave_msr;
  break;
 case 129:
  msr_info->data = svm->nested.vm_cr_msr;
  break;
 case 138:
  if (!msr_info->host_initiated &&
      !guest_cpuid_has(vcpu, X86_FEATURE_AMD_IBRS) &&
      !guest_cpuid_has(vcpu, X86_FEATURE_AMD_SSBD))
   return 1;

  msr_info->data = svm->spec_ctrl;
  break;
 case 147:
  if (!msr_info->host_initiated &&
      !guest_cpuid_has(vcpu, X86_FEATURE_VIRT_SSBD))
   return 1;

  msr_info->data = svm->virt_spec_ctrl;
  break;
 case 144: {

  int family, model;

  family = guest_cpuid_family(vcpu);
  model = guest_cpuid_model(vcpu);

  if (family < 0 || model < 0)
   return kvm_get_msr_common(vcpu, msr_info);

  msr_info->data = 0;

  if (family == 0x15 &&
      (model >= 0x2 && model < 0x20))
   msr_info->data = 0x1E;
  }
  break;
 case 145:
  msr_info->data = svm->msr_decfg;
  break;
 default:
  return kvm_get_msr_common(vcpu, msr_info);
 }
 return 0;
}
