
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * am33xx_control_vals ;
 int * am43xx_control_reg_offsets ;
 int omap_ctrl_writel (int ,int ) ;

void am43xx_control_restore_context(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(am43xx_control_reg_offsets); i++)
  omap_ctrl_writel(am33xx_control_vals[i],
     am43xx_control_reg_offsets[i]);
}
