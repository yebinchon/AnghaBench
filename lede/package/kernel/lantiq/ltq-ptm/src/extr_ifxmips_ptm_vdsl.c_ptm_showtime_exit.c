
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int IFX_REG_W32 (int,int ) ;
 int UTP_CFG ;
 int * g_net_dev ;
 scalar_t__ g_showtime ;
 int * g_xdata_addr ;
 int netif_carrier_off (int ) ;
 int printk (char*) ;

__attribute__((used)) static int ptm_showtime_exit(void)
{
 int i;

 if ( !g_showtime )
  return -1;





 IFX_REG_W32(0x00, UTP_CFG);

 for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ )
  netif_carrier_off(g_net_dev[i]);

 g_showtime = 0;


 g_xdata_addr = ((void*)0);

 printk("leave showtime\n");

 return 0;
}
