
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int mm; } ;
struct operand {scalar_t__ type; TYPE_1__ addr; int mm_val; } ;


 scalar_t__ OP_MM ;
 int read_mmx_reg (struct x86_emulate_ctxt*,int *,int ) ;

__attribute__((used)) static void fetch_possible_mmx_operand(struct x86_emulate_ctxt *ctxt,
           struct operand *op)
{
 if (op->type == OP_MM)
  read_mmx_reg(ctxt, &op->mm_val, op->addr.mm);
}
