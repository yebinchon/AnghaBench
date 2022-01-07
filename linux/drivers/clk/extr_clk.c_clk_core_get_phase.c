
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_core {int phase; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_phase ) (int ) ;} ;


 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;
 int stub1 (int ) ;

__attribute__((used)) static int clk_core_get_phase(struct clk_core *core)
{
 int ret;

 clk_prepare_lock();

 if (core->ops->get_phase)
  core->phase = core->ops->get_phase(core->hw);
 ret = core->phase;
 clk_prepare_unlock();

 return ret;
}
