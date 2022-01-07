
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int (* pre_leave_smm ) (int ,char const*) ;} ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,char const*) ;

__attribute__((used)) static int emulator_pre_leave_smm(struct x86_emulate_ctxt *ctxt,
      const char *smstate)
{
 return kvm_x86_ops->pre_leave_smm(emul_to_vcpu(ctxt), smstate);
}
