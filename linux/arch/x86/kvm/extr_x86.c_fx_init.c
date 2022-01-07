
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int cr0; int xcr0; TYPE_3__* guest_fpu; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_6__ {int xcomp_bv; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
struct TYPE_10__ {TYPE_2__ xsave; } ;
struct TYPE_8__ {TYPE_5__ state; } ;


 int X86_CR0_ET ;
 int X86_FEATURE_XSAVES ;
 int XFEATURE_MASK_FP ;
 int XSTATE_COMPACTION_ENABLED ;
 scalar_t__ boot_cpu_has (int ) ;
 int fpstate_init (TYPE_5__*) ;
 int host_xcr0 ;

__attribute__((used)) static void fx_init(struct kvm_vcpu *vcpu)
{
 fpstate_init(&vcpu->arch.guest_fpu->state);
 if (boot_cpu_has(X86_FEATURE_XSAVES))
  vcpu->arch.guest_fpu->state.xsave.header.xcomp_bv =
   host_xcr0 | XSTATE_COMPACTION_ENABLED;




 vcpu->arch.xcr0 = XFEATURE_MASK_FP;

 vcpu->arch.cr0 |= X86_CR0_ET;
}
