
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_set_msr (int ,int ,int ) ;

__attribute__((used)) static int emulator_set_msr(struct x86_emulate_ctxt *ctxt,
       u32 msr_index, u64 data)
{
 return kvm_set_msr(emul_to_vcpu(ctxt), msr_index, data);
}
