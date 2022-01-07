
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int vr; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_5__ {TYPE_3__* regs; int * vr_save_area; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_7__ {int msr; } ;


 int CPU_FTR_ALTIVEC ;
 int MSR_VEC ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_4__* current ;
 int disable_kernel_altivec () ;
 int enable_kernel_altivec () ;
 int load_vr_state (int *) ;

__attribute__((used)) static inline void kvmppc_load_guest_altivec(struct kvm_vcpu *vcpu)
{
}
