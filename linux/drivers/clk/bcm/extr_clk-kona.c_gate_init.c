
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;


 int __gate_commit (struct ccu_data*,struct bcm_clk_gate*) ;
 int gate_exists (struct bcm_clk_gate*) ;

__attribute__((used)) static bool gate_init(struct ccu_data *ccu, struct bcm_clk_gate *gate)
{
 if (!gate_exists(gate))
  return 1;
 return __gate_commit(ccu, gate);
}
