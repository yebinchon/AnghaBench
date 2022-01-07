
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int clk_core_prepare (struct clk_core*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

__attribute__((used)) static int clk_core_prepare_lock(struct clk_core *core)
{
 int ret;

 clk_prepare_lock();
 ret = clk_core_prepare(core);
 clk_prepare_unlock();

 return ret;
}
