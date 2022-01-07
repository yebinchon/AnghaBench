
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int clk_core_disable (struct clk_core*) ;
 unsigned long clk_enable_lock () ;
 int clk_enable_unlock (unsigned long) ;

__attribute__((used)) static void clk_core_disable_lock(struct clk_core *core)
{
 unsigned long flags;

 flags = clk_enable_lock();
 clk_core_disable(core);
 clk_enable_unlock(flags);
}
