
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int dummy; } ;


 int clk_core_unprepare (struct clk_core*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

__attribute__((used)) static void clk_core_unprepare_lock(struct clk_core *core)
{
 clk_prepare_lock();
 clk_core_unprepare(core);
 clk_prepare_unlock();
}
