
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef enum instruction_fetch_type { ____Placeholder_instruction_fetch_type } instruction_fetch_type ;


 int EMULATE_AGAIN ;
 int EMULATE_DONE ;
 int INST_SC ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_ld (struct kvm_vcpu*,int*,int,int *,int) ;

int kvmppc_load_last_inst(struct kvm_vcpu *vcpu,
  enum instruction_fetch_type type, u32 *inst)
{
 ulong pc = kvmppc_get_pc(vcpu);
 int r;

 if (type == INST_SC)
  pc -= 4;

 r = kvmppc_ld(vcpu, &pc, sizeof(u32), inst, 0);
 if (r == EMULATE_DONE)
  return r;
 else
  return EMULATE_AGAIN;
}
