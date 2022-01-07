
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int PT_CCR ;
 unsigned char* condmask ;
 unsigned char h8300_get_reg (struct task_struct*,int ) ;

__attribute__((used)) static int isbranch(struct task_struct *task, int reson)
{
 unsigned char cond = h8300_get_reg(task, PT_CCR);





 __asm__("bld #3,%w0\n\t"
  "bxor #1,%w0\n\t"
  "bst #4,%w0\n\t"
  "bor #2,%w0\n\t"
  "bst #5,%w0\n\t"
  "bld #2,%w0\n\t"
  "bor #0,%w0\n\t"
  "bst #6,%w0\n\t"
  : "=&r"(cond) : "0"(cond) : "cc");
 cond &= condmask[reson >> 1];
 if (!(reson & 1))
  return cond == 0;
 else
  return cond != 0;
}
