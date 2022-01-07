
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_core {int flags; } ;


 int CLK_GET_ACCURACY_NOCACHE ;
 unsigned long __clk_get_accuracy (struct clk_core*) ;
 int __clk_recalc_accuracies (struct clk_core*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;

__attribute__((used)) static long clk_core_get_accuracy(struct clk_core *core)
{
 unsigned long accuracy;

 clk_prepare_lock();
 if (core && (core->flags & CLK_GET_ACCURACY_NOCACHE))
  __clk_recalc_accuracies(core);

 accuracy = __clk_get_accuracy(core);
 clk_prepare_unlock();

 return accuracy;
}
