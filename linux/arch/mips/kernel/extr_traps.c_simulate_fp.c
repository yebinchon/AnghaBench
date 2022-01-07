
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



__attribute__((used)) static int simulate_fp(struct pt_regs *regs, unsigned int opcode,
         unsigned long old_epc, unsigned long old_ra)
{
 return -1;
}
