
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct x86_emulate_ctxt {int dummy; } ;


 int __kvm_set_xcr (int ,int ,int ) ;
 int emul_to_vcpu (struct x86_emulate_ctxt*) ;

__attribute__((used)) static int emulator_set_xcr(struct x86_emulate_ctxt *ctxt, u32 index, u64 xcr)
{
 return __kvm_set_xcr(emul_to_vcpu(ctxt), index, xcr);
}
