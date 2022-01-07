
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int function; } ;
struct TYPE_7__ {int vmcs02_initialized; int vmxon; int vmcs02; void* cached_vmcs12; void* cached_shadow_vmcs12; int vpid02; TYPE_4__ preemption_timer; } ;
struct TYPE_5__ {scalar_t__ ctl; } ;
struct TYPE_6__ {TYPE_1__ guest; } ;
struct vcpu_vmx {TYPE_3__ nested; TYPE_2__ pt_desc; } ;
struct kvm_vcpu {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 int HRTIMER_MODE_REL_PINNED ;
 scalar_t__ PT_MODE_HOST_GUEST ;
 int VMCS12_SIZE ;
 int alloc_loaded_vmcs (int *) ;
 int alloc_shadow_vmcs (struct kvm_vcpu*) ;
 int allocate_vpid () ;
 scalar_t__ enable_shadow_vmcs ;
 int free_loaded_vmcs (int *) ;
 int hrtimer_init (TYPE_4__*,int ,int ) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 scalar_t__ pt_mode ;
 int pt_update_intercept_for_msr (struct vcpu_vmx*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_preemption_timer_fn ;

__attribute__((used)) static int enter_vmx_operation(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int r;

 r = alloc_loaded_vmcs(&vmx->nested.vmcs02);
 if (r < 0)
  goto out_vmcs02;

 vmx->nested.cached_vmcs12 = kzalloc(VMCS12_SIZE, GFP_KERNEL_ACCOUNT);
 if (!vmx->nested.cached_vmcs12)
  goto out_cached_vmcs12;

 vmx->nested.cached_shadow_vmcs12 = kzalloc(VMCS12_SIZE, GFP_KERNEL_ACCOUNT);
 if (!vmx->nested.cached_shadow_vmcs12)
  goto out_cached_shadow_vmcs12;

 if (enable_shadow_vmcs && !alloc_shadow_vmcs(vcpu))
  goto out_shadow_vmcs;

 hrtimer_init(&vmx->nested.preemption_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL_PINNED);
 vmx->nested.preemption_timer.function = vmx_preemption_timer_fn;

 vmx->nested.vpid02 = allocate_vpid();

 vmx->nested.vmcs02_initialized = 0;
 vmx->nested.vmxon = 1;

 if (pt_mode == PT_MODE_HOST_GUEST) {
  vmx->pt_desc.guest.ctl = 0;
  pt_update_intercept_for_msr(vmx);
 }

 return 0;

out_shadow_vmcs:
 kfree(vmx->nested.cached_shadow_vmcs12);

out_cached_shadow_vmcs12:
 kfree(vmx->nested.cached_vmcs12);

out_cached_vmcs12:
 free_loaded_vmcs(&vmx->nested.vmcs02);

out_vmcs02:
 return -ENOMEM;
}
