
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int protect_count; } ;


 int clk_core_rate_protect (struct clk_core*) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static void clk_core_rate_restore_protect(struct clk_core *core, int count)
{
 lockdep_assert_held(&prepare_lock);

 if (!core)
  return;

 if (count == 0)
  return;

 clk_core_rate_protect(core);
 core->protect_count = count;
}
