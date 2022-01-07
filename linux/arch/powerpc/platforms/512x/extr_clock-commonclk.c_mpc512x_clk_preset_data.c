
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int *) ;
 int ENODEV ;
 int ERR_PTR (int ) ;
 int * clks ;

__attribute__((used)) static void mpc512x_clk_preset_data(void)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(clks); i++)
  clks[i] = ERR_PTR(-ENODEV);
}
