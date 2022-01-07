
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int clk_core_enable (struct clk_core*) ;
 unsigned long clk_enable_lock () ;
 int clk_enable_unlock (unsigned long) ;

__attribute__((used)) static int clk_core_enable_lock(struct clk_core *core)
{
 unsigned long flags;
 int ret;

 flags = clk_enable_lock();
 ret = clk_core_enable(core);
 clk_enable_unlock(flags);

 return ret;
}
