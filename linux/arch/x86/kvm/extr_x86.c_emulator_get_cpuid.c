
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_cpuid (int ,int *,int *,int *,int *,int) ;

__attribute__((used)) static bool emulator_get_cpuid(struct x86_emulate_ctxt *ctxt,
   u32 *eax, u32 *ebx, u32 *ecx, u32 *edx, bool check_limit)
{
 return kvm_cpuid(emul_to_vcpu(ctxt), eax, ebx, ecx, edx, check_limit);
}
