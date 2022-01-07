
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86_emulate_ctxt {int dummy; } ;


 int VCPU_REGS_RSP ;
 int masked_increment (int ,int ,int) ;
 int reg_rmw (struct x86_emulate_ctxt*,int ) ;
 int stack_mask (struct x86_emulate_ctxt*) ;

__attribute__((used)) static void rsp_increment(struct x86_emulate_ctxt *ctxt, int inc)
{
 masked_increment(reg_rmw(ctxt, VCPU_REGS_RSP), stack_mask(ctxt), inc);
}
