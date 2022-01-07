
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int n; } ;
struct task_struct {int dummy; } ;


 int X86_FEATURE_FXSR ;
 scalar_t__ boot_cpu_has (int ) ;

int regset_xregset_fpregs_active(struct task_struct *target, const struct user_regset *regset)
{
 if (boot_cpu_has(X86_FEATURE_FXSR))
  return regset->n;
 else
  return 0;
}
