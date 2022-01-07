
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx_napi_stats {int rx_packets; int rx_packets_max; int tx_packets; int tx_packets_max; int * tx; int tx_count; int * rx; int rx_count; } ;
struct TYPE_2__ {struct ag71xx_napi_stats napi_stats; } ;
struct ag71xx {TYPE_1__ debug; } ;


 int AG71XX_NAPI_WEIGHT ;

void ag71xx_debugfs_update_napi_stats(struct ag71xx *ag, int rx, int tx)
{
 struct ag71xx_napi_stats *stats = &ag->debug.napi_stats;

 if (rx) {
  stats->rx_count++;
  stats->rx_packets += rx;
  if (rx <= AG71XX_NAPI_WEIGHT)
   stats->rx[rx]++;
  if (rx > stats->rx_packets_max)
   stats->rx_packets_max = rx;
 }

 if (tx) {
  stats->tx_count++;
  stats->tx_packets += tx;
  if (tx <= AG71XX_NAPI_WEIGHT)
   stats->tx[tx]++;
  if (tx > stats->tx_packets_max)
   stats->tx_packets_max = tx;
 }
}
