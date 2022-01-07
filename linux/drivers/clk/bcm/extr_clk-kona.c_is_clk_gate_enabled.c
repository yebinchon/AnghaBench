
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;


 int __is_clk_gate_enabled (struct ccu_data*,struct bcm_clk_gate*) ;
 long ccu_lock (struct ccu_data*) ;
 int ccu_unlock (struct ccu_data*,long) ;
 int gate_exists (struct bcm_clk_gate*) ;

__attribute__((used)) static bool
is_clk_gate_enabled(struct ccu_data *ccu, struct bcm_clk_gate *gate)
{
 long flags;
 bool ret;


 if (!gate_exists(gate))
  return 1;

 flags = ccu_lock(ccu);
 ret = __is_clk_gate_enabled(ccu, gate);
 ccu_unlock(ccu, flags);

 return ret;
}
