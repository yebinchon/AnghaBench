
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int * g_net_dev ;
 scalar_t__ g_showtime ;
 int netif_carrier_off (int ) ;
 int printk (char*) ;

__attribute__((used)) static int ptm_showtime_exit(void)
{
    int i;

    if ( !g_showtime )
        return -1;

    for ( i = 0; i < ARRAY_SIZE(g_net_dev); i++ )
        netif_carrier_off(g_net_dev[i]);

    g_showtime = 0;

    printk("leave showtime\n");

    return 0;
}
