
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct desc_ptr {int dummy; } ;
struct TYPE_2__ {int (* get_idt ) (int ,struct desc_ptr*) ;} ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,struct desc_ptr*) ;

__attribute__((used)) static void emulator_get_idt(struct x86_emulate_ctxt *ctxt, struct desc_ptr *dt)
{
 kvm_x86_ops->get_idt(emul_to_vcpu(ctxt), dt);
}
