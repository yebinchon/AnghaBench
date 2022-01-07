
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int protect_count; } ;


 int EINVAL ;
 int clk_core_rate_unprotect (struct clk_core*) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static int clk_core_rate_nuke_protect(struct clk_core *core)
{
 int ret;

 lockdep_assert_held(&prepare_lock);

 if (!core)
  return -EINVAL;

 if (core->protect_count == 0)
  return 0;

 ret = core->protect_count;
 core->protect_count = 1;
 clk_core_rate_unprotect(core);

 return ret;
}
