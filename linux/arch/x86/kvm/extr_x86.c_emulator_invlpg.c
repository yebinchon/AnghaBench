
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_mmu_invlpg (int ,int ) ;

__attribute__((used)) static void emulator_invlpg(struct x86_emulate_ctxt *ctxt, ulong address)
{
 kvm_mmu_invlpg(emul_to_vcpu(ctxt), address);
}
