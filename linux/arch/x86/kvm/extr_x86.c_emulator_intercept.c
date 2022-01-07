
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_instruction_info {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;
typedef enum x86_intercept_stage { ____Placeholder_x86_intercept_stage } x86_intercept_stage ;
struct TYPE_2__ {int (* check_intercept ) (int ,struct x86_instruction_info*,int) ;} ;


 int emul_to_vcpu (struct x86_emulate_ctxt*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ,struct x86_instruction_info*,int) ;

__attribute__((used)) static int emulator_intercept(struct x86_emulate_ctxt *ctxt,
         struct x86_instruction_info *info,
         enum x86_intercept_stage stage)
{
 return kvm_x86_ops->check_intercept(emul_to_vcpu(ctxt), info, stage);
}
