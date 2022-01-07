
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {scalar_t__ protect_count; struct clk_core* parent; } ;


 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static void clk_core_rate_protect(struct clk_core *core)
{
 lockdep_assert_held(&prepare_lock);

 if (!core)
  return;

 if (core->protect_count == 0)
  clk_core_rate_protect(core->parent);

 core->protect_count++;
}
