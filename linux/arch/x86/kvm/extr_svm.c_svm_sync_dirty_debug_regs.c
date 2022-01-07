
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_6__ {int switch_db_regs; int dr7; int dr6; int * db; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int dr7; } ;
struct TYPE_5__ {TYPE_1__ save; } ;


 int KVM_DEBUGREG_WONT_EXIT ;
 int get_debugreg (int ,int) ;
 int set_dr_intercepts (struct vcpu_svm*) ;
 int svm_get_dr6 (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_sync_dirty_debug_regs(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 get_debugreg(vcpu->arch.db[0], 0);
 get_debugreg(vcpu->arch.db[1], 1);
 get_debugreg(vcpu->arch.db[2], 2);
 get_debugreg(vcpu->arch.db[3], 3);
 vcpu->arch.dr6 = svm_get_dr6(vcpu);
 vcpu->arch.dr7 = svm->vmcb->save.dr7;

 vcpu->arch.switch_db_regs &= ~KVM_DEBUGREG_WONT_EXIT;
 set_dr_intercepts(svm);
}
