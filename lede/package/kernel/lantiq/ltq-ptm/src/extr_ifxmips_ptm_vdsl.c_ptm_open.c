
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {int napi; } ;


 int ASSERT (int,char*) ;
 int IFX_REG_W32_MASK (int ,int,int ) ;
 int MBOX_IGU1_IER ;
 struct net_device** g_net_dev ;
 TYPE_2__ g_ptm_priv_data ;
 int napi_enable (int *) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int ptm_open(struct net_device *dev)
{
    ASSERT(dev == g_net_dev[0], "incorrect device");

    napi_enable(&g_ptm_priv_data.itf[0].napi);

    IFX_REG_W32_MASK(0, 1, MBOX_IGU1_IER);

    netif_start_queue(dev);

    return 0;
}
