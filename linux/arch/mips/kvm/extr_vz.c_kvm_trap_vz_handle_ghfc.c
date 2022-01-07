
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int EMULATE_DONE ;
 int trace_kvm_guest_mode_change (struct kvm_vcpu*) ;

__attribute__((used)) static enum emulation_result kvm_trap_vz_handle_ghfc(u32 cause, u32 *opc,
           struct kvm_vcpu *vcpu)
{




 trace_kvm_guest_mode_change(vcpu);

 return EMULATE_DONE;
}
