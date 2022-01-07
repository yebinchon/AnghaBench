
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int (* set_nmi_mask ) (int ,int) ;} ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,int) ;

__attribute__((used)) static void emulator_set_nmi_mask(struct x86_emulate_ctxt *ctxt, bool masked)
{
 kvm_x86_ops->set_nmi_mask(emul_to_vcpu(ctxt), masked);
}
