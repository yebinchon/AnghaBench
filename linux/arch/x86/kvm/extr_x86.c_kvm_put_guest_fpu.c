
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fpu_reload; } ;
struct TYPE_5__ {TYPE_1__* user_fpu; int guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ stat; TYPE_2__ arch; } ;
struct TYPE_4__ {int state; } ;


 int copy_fpregs_to_fpstate (int ) ;
 int copy_kernel_to_fpregs (int *) ;
 int fpregs_lock () ;
 int fpregs_mark_activate () ;
 int fpregs_unlock () ;
 int trace_kvm_fpu (int ) ;

__attribute__((used)) static void kvm_put_guest_fpu(struct kvm_vcpu *vcpu)
{
 fpregs_lock();

 copy_fpregs_to_fpstate(vcpu->arch.guest_fpu);
 copy_kernel_to_fpregs(&vcpu->arch.user_fpu->state);

 fpregs_mark_activate();
 fpregs_unlock();

 ++vcpu->stat.fpu_reload;
 trace_kvm_fpu(0);
}
