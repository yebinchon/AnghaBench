
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef enum instruction_fetch_type { ____Placeholder_instruction_fetch_type } instruction_fetch_type ;


 int EMULATE_AGAIN ;

int kvmppc_load_last_inst(struct kvm_vcpu *vcpu,
  enum instruction_fetch_type type, u32 *instr)
{
 return EMULATE_AGAIN;
}
