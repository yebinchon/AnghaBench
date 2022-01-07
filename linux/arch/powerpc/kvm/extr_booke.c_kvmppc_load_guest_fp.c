
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fp; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {TYPE_3__* regs; int * fp_save_area; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_7__ {int msr; } ;


 int MSR_FP ;
 TYPE_4__* current ;
 int disable_kernel_fp () ;
 int enable_kernel_fp () ;
 int load_fp_state (int *) ;

__attribute__((used)) static inline void kvmppc_load_guest_fp(struct kvm_vcpu *vcpu)
{
}
