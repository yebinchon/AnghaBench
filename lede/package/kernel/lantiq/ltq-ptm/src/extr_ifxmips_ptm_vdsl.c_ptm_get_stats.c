
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* itf; } ;
struct TYPE_3__ {struct net_device_stats stats; } ;


 struct net_device** g_net_dev ;
 TYPE_2__ g_ptm_priv_data ;

__attribute__((used)) static struct net_device_stats *ptm_get_stats(struct net_device *dev)
{
   struct net_device_stats *s;

    if ( dev != g_net_dev[0] )
        return ((void*)0);
s = &g_ptm_priv_data.itf[0].stats;

    return s;
}
