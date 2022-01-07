
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {int dev; } ;


 int ATM_PHY_SIG_LOST ;
 int ATM_PORT_NUMBER ;
 int IFX_REG_W32 (int,int ) ;
 int UTP_CFG ;
 int atm_dev_signal_change (int ,int ) ;
 TYPE_2__ g_atm_priv_data ;
 scalar_t__ g_showtime ;
 int * g_xdata_addr ;
 int printk (char*) ;

__attribute__((used)) static int atm_showtime_exit(void)
{
 int port_num;

 if ( !g_showtime )
  return -1;





 for ( port_num = 0; port_num < ATM_PORT_NUMBER; port_num++ )
  atm_dev_signal_change(g_atm_priv_data.port[port_num].dev, ATM_PHY_SIG_LOST);

 g_showtime = 0;
 g_xdata_addr = ((void*)0);
 printk("leave showtime\n");
 return 0;
}
