
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int clk_core_enable_lock (struct clk_core*) ;
 int clk_core_prepare_lock (struct clk_core*) ;
 int clk_core_unprepare_lock (struct clk_core*) ;

__attribute__((used)) static int clk_core_prepare_enable(struct clk_core *core)
{
 int ret;

 ret = clk_core_prepare_lock(core);
 if (ret)
  return ret;

 ret = clk_core_enable_lock(core);
 if (ret)
  clk_core_unprepare_lock(core);

 return ret;
}
