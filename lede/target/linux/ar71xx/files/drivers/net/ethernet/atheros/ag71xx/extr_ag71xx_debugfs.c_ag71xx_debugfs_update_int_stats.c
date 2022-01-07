
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int rx_be; int rx_of; int rx_pr; int tx_be; int tx_ur; int tx_ps; int total; } ;
struct TYPE_3__ {TYPE_2__ int_stats; } ;
struct ag71xx {TYPE_1__ debug; } ;


 int AG71XX_INT_RX_BE ;
 int AG71XX_INT_RX_OF ;
 int AG71XX_INT_RX_PR ;
 int AG71XX_INT_TX_BE ;
 int AG71XX_INT_TX_PS ;
 int AG71XX_INT_TX_UR ;

void ag71xx_debugfs_update_int_stats(struct ag71xx *ag, u32 status)
{
 if (status)
  ag->debug.int_stats.total++;
 if (status & AG71XX_INT_TX_PS)
  ag->debug.int_stats.tx_ps++;
 if (status & AG71XX_INT_TX_UR)
  ag->debug.int_stats.tx_ur++;
 if (status & AG71XX_INT_TX_BE)
  ag->debug.int_stats.tx_be++;
 if (status & AG71XX_INT_RX_PR)
  ag->debug.int_stats.rx_pr++;
 if (status & AG71XX_INT_RX_OF)
  ag->debug.int_stats.rx_of++;
 if (status & AG71XX_INT_RX_BE)
  ag->debug.int_stats.rx_be++;
}
