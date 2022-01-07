
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {void* hva; int gfn; } ;
struct TYPE_4__ {TYPE_1__ virtual_apic_map; } ;
struct vcpu_vmx {TYPE_2__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int APIC_PROCPRI ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int get_vmcs12 (struct kvm_vcpu*) ;
 int is_guest_mode (struct kvm_vcpu*) ;
 int nested_cpu_has_vid (int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_get_rvi () ;

__attribute__((used)) static bool vmx_guest_apic_has_interrupt(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 void *vapic_page;
 u32 vppr;
 int rvi;

 if (WARN_ON_ONCE(!is_guest_mode(vcpu)) ||
  !nested_cpu_has_vid(get_vmcs12(vcpu)) ||
  WARN_ON_ONCE(!vmx->nested.virtual_apic_map.gfn))
  return 0;

 rvi = vmx_get_rvi();

 vapic_page = vmx->nested.virtual_apic_map.hva;
 vppr = *((u32 *)(vapic_page + APIC_PROCPRI));

 return ((rvi & 0xf0) > (vppr & 0xf0));
}
