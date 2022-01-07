
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int MM_POOL32A_FUNC ;
 unsigned int MM_RDHWR ;
 unsigned int MM_RS ;
 unsigned int MM_RT ;
 int simulate_rdhwr (struct pt_regs*,int,int) ;

__attribute__((used)) static int simulate_rdhwr_mm(struct pt_regs *regs, unsigned int opcode)
{
 if ((opcode & MM_POOL32A_FUNC) == MM_RDHWR) {
  int rd = (opcode & MM_RS) >> 16;
  int rt = (opcode & MM_RT) >> 21;
  simulate_rdhwr(regs, rd, rt);
  return 0;
 }


 return -1;
}
