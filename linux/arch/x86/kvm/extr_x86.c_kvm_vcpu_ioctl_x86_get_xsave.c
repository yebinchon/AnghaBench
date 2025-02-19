
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct kvm_xsave {int * region; } ;
struct TYPE_6__ {TYPE_2__* guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct fxregs_state {int dummy; } ;
struct TYPE_4__ {int fxsave; } ;
struct TYPE_5__ {TYPE_1__ state; } ;


 int X86_FEATURE_XSAVE ;
 int XFEATURE_MASK_FPSSE ;
 int XSAVE_HDR_OFFSET ;
 scalar_t__ boot_cpu_has (int ) ;
 int fill_xsave (int *,struct kvm_vcpu*) ;
 int memcpy (int *,int *,int) ;
 int memset (struct kvm_xsave*,int ,int) ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_xsave(struct kvm_vcpu *vcpu,
      struct kvm_xsave *guest_xsave)
{
 if (boot_cpu_has(X86_FEATURE_XSAVE)) {
  memset(guest_xsave, 0, sizeof(struct kvm_xsave));
  fill_xsave((u8 *) guest_xsave->region, vcpu);
 } else {
  memcpy(guest_xsave->region,
   &vcpu->arch.guest_fpu->state.fxsave,
   sizeof(struct fxregs_state));
  *(u64 *)&guest_xsave->region[XSAVE_HDR_OFFSET / sizeof(u32)] =
   XFEATURE_MASK_FPSSE;
 }
}
