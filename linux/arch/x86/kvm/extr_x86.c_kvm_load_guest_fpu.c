
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* guest_fpu; int user_fpu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int state; } ;


 int XFEATURE_MASK_PKRU ;
 int __copy_kernel_to_fpregs (int *,int ) ;
 int copy_fpregs_to_fpstate (int ) ;
 int fpregs_lock () ;
 int fpregs_mark_activate () ;
 int fpregs_unlock () ;
 int trace_kvm_fpu (int) ;

__attribute__((used)) static void kvm_load_guest_fpu(struct kvm_vcpu *vcpu)
{
 fpregs_lock();

 copy_fpregs_to_fpstate(vcpu->arch.user_fpu);

 __copy_kernel_to_fpregs(&vcpu->arch.guest_fpu->state,
    ~XFEATURE_MASK_PKRU);

 fpregs_mark_activate();
 fpregs_unlock();

 trace_kvm_fpu(1);
}
