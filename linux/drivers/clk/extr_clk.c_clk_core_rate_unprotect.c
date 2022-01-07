
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {scalar_t__ protect_count; struct clk_core* parent; int name; } ;


 scalar_t__ WARN (int,char*,int ) ;
 int lockdep_assert_held (int *) ;
 int prepare_lock ;

__attribute__((used)) static void clk_core_rate_unprotect(struct clk_core *core)
{
 lockdep_assert_held(&prepare_lock);

 if (!core)
  return;

 if (WARN(core->protect_count == 0,
     "%s already unprotected\n", core->name))
  return;

 if (--core->protect_count > 0)
  return;

 clk_core_rate_unprotect(core->parent);
}
