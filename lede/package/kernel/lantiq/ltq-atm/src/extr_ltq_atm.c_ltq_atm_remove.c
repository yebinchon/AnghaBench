
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct ltq_atm_ops {int (* shutdown ) () ;int (* stop ) (int ) ;} ;
struct TYPE_5__ {TYPE_1__* port; } ;
struct TYPE_4__ {int dev; } ;


 int ATM_PORT_NUMBER ;
 int PPE_MAILBOX_IGU1_INT ;
 int atm_dev_deregister (int ) ;
 int clear_priv_data () ;
 int free_irq (int ,TYPE_2__*) ;
 TYPE_2__ g_atm_priv_data ;
 int * ifx_mei_atm_showtime_enter ;
 int * ifx_mei_atm_showtime_exit ;
 int invalidate_oam_htu_entry () ;
 struct ltq_atm_ops* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int ) ;
 int stub2 () ;

__attribute__((used)) static int ltq_atm_remove(struct platform_device *pdev)
{
 int port_num;
 struct ltq_atm_ops *ops = platform_get_drvdata(pdev);

 ifx_mei_atm_showtime_enter = ((void*)0);
 ifx_mei_atm_showtime_exit = ((void*)0);

 invalidate_oam_htu_entry();

 ops->stop(0);

 free_irq(PPE_MAILBOX_IGU1_INT, &g_atm_priv_data);

 for ( port_num = 0; port_num < ATM_PORT_NUMBER; port_num++ )
  atm_dev_deregister(g_atm_priv_data.port[port_num].dev);

 ops->shutdown();

 clear_priv_data();

 return 0;
}
