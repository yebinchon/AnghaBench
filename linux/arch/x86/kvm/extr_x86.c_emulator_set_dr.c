
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int __kvm_set_dr (int ,int,unsigned long) ;
 int emul_to_vcpu (struct x86_emulate_ctxt*) ;

__attribute__((used)) static int emulator_set_dr(struct x86_emulate_ctxt *ctxt, int dr,
      unsigned long value)
{

 return __kvm_set_dr(emul_to_vcpu(ctxt), dr, value);
}
