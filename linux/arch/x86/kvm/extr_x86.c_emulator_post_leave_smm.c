
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 int kvm_smm_changed (int ) ;

__attribute__((used)) static void emulator_post_leave_smm(struct x86_emulate_ctxt *ctxt)
{
 kvm_smm_changed(emul_to_vcpu(ctxt));
}
