
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_pmu_rdpmc (int ,int ,int *) ;

__attribute__((used)) static int emulator_read_pmc(struct x86_emulate_ctxt *ctxt,
        u32 pmc, u64 *pdata)
{
 return kvm_pmu_rdpmc(emul_to_vcpu(ctxt), pmc, pdata);
}
