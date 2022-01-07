
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int (* get_cpl ) (int ) ;} ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ) ;

__attribute__((used)) static int emulator_get_cpl(struct x86_emulate_ctxt *ctxt)
{
 return kvm_x86_ops->get_cpl(emul_to_vcpu(ctxt));
}
