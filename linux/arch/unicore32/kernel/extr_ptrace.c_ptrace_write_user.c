
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int put_user_reg (struct task_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int ptrace_write_user(struct task_struct *tsk, unsigned long off,
        unsigned long val)
{
 if (off >= sizeof(struct pt_regs))
  return 0;

 return put_user_reg(tsk, off >> 2, val);
}
