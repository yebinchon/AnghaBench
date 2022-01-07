
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccm_ipc_handle ;
 int imx_scu_get_handle (int *) ;

int imx_clk_scu_init(void)
{
 return imx_scu_get_handle(&ccm_ipc_handle);
}
