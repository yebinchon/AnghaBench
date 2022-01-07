
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {int * fp_save_area; TYPE_1__* regs; } ;
struct TYPE_7__ {TYPE_2__ thread; } ;
struct TYPE_5__ {int msr; } ;


 int MSR_FP ;
 TYPE_3__* current ;
 int giveup_fpu (TYPE_3__*) ;

__attribute__((used)) static inline void kvmppc_save_guest_fp(struct kvm_vcpu *vcpu)
{





}
