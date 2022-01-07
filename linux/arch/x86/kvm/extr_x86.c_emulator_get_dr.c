
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_get_dr (int ,int,unsigned long*) ;

__attribute__((used)) static int emulator_get_dr(struct x86_emulate_ctxt *ctxt, int dr,
      unsigned long *dest)
{
 return kvm_get_dr(emul_to_vcpu(ctxt), dr, dest);
}
