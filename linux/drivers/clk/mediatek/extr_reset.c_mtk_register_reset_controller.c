
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int mtk_register_reset_controller_common (struct device_node*,unsigned int,int,int *) ;
 int mtk_reset_ops ;

void mtk_register_reset_controller(struct device_node *np,
 unsigned int num_regs, int regofs)
{
 mtk_register_reset_controller_common(np, num_regs, regofs,
  &mtk_reset_ops);
}
