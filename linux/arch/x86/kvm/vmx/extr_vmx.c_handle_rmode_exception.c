
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ halt_request; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GP_VECTOR ;
 int SS_VECTOR ;
 scalar_t__ kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception (struct kvm_vcpu*,int) ;
 int kvm_vcpu_halt (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_rmode_exception(struct kvm_vcpu *vcpu,
      int vec, u32 err_code)
{




 if (((vec == GP_VECTOR) || (vec == SS_VECTOR)) && err_code == 0) {
  if (kvm_emulate_instruction(vcpu, 0)) {
   if (vcpu->arch.halt_request) {
    vcpu->arch.halt_request = 0;
    return kvm_vcpu_halt(vcpu);
   }
   return 1;
  }
  return 0;
 }






 kvm_queue_exception(vcpu, vec);
 return 1;
}
