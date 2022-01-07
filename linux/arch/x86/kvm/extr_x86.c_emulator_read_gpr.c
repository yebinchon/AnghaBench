
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_register_read (int ,unsigned int) ;

__attribute__((used)) static ulong emulator_read_gpr(struct x86_emulate_ctxt *ctxt, unsigned reg)
{
 return kvm_register_read(emul_to_vcpu(ctxt), reg);
}
