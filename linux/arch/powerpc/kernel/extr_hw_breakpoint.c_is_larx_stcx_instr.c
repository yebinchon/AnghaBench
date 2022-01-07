
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct instruction_op {int type; } ;


 int GETTYPE (int ) ;
 int LARX ;
 int STCX ;
 int analyse_instr (struct instruction_op*,struct pt_regs*,unsigned int) ;

__attribute__((used)) static bool is_larx_stcx_instr(struct pt_regs *regs, unsigned int instr)
{
 int ret, type;
 struct instruction_op op;

 ret = analyse_instr(&op, regs, instr);
 type = GETTYPE(op.type);
 return (!ret && (type == LARX || type == STCX));
}
