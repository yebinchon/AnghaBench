
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int FUNC ;
 unsigned int OPCODE ;
 unsigned int RD ;
 unsigned int RDHWR ;
 unsigned int RT ;
 unsigned int SPEC3 ;
 int simulate_rdhwr (struct pt_regs*,int,int) ;

__attribute__((used)) static int simulate_rdhwr_normal(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & OPCODE) == SPEC3 && (opcode & FUNC) == RDHWR) {
  int rd = (opcode & RD) >> 11;
  int rt = (opcode & RT) >> 16;

  simulate_rdhwr(regs, rd, rt);
  return 0;
 }


 return -1;
}
