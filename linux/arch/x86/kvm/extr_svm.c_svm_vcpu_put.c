
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int gs; int fs; int ldt; } ;
struct vcpu_svm {int * host_user_msrs; TYPE_3__ host; } ;
struct TYPE_6__ {int host_state_reload; } ;
struct kvm_vcpu {TYPE_2__ stat; } ;
struct TYPE_5__ {int gsbase; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;


 int MSR_KERNEL_GS_BASE ;
 int NR_HOST_SAVE_USER_MSRS ;
 int avic_vcpu_put (struct kvm_vcpu*) ;
 TYPE_4__* current ;
 int fs ;
 int gs ;
 int * host_save_user_msrs ;
 int kvm_load_ldt (int ) ;
 int load_gs_index (int ) ;
 int loadsegment (int ,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void svm_vcpu_put(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 int i;

 avic_vcpu_put(vcpu);

 ++vcpu->stat.host_state_reload;
 kvm_load_ldt(svm->host.ldt);
 for (i = 0; i < NR_HOST_SAVE_USER_MSRS; i++)
  wrmsrl(host_save_user_msrs[i], svm->host_user_msrs[i]);
}
