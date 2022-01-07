
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct fe_priv {struct fe_hw_stats* hw_stats; } ;
struct fe_hw_stats {int syncp; int tx_bytes; int stats_lock; } ;
struct ethtool_stats {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int fe_gdma_str ;
 int fe_stats_update (struct fe_priv*) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;
 unsigned int u64_stats_fetch_begin_irq (int *) ;
 scalar_t__ u64_stats_fetch_retry_irq (int *,unsigned int) ;

__attribute__((used)) static void fe_get_ethtool_stats(struct net_device *dev,
     struct ethtool_stats *stats, u64 *data)
{
 struct fe_priv *priv = netdev_priv(dev);
 struct fe_hw_stats *hwstats = priv->hw_stats;
 u64 *data_src, *data_dst;
 unsigned int start;
 int i;

 if (netif_running(dev) && netif_device_present(dev)) {
  if (spin_trylock(&hwstats->stats_lock)) {
   fe_stats_update(priv);
   spin_unlock(&hwstats->stats_lock);
  }
 }

 do {
  data_src = &hwstats->tx_bytes;
  data_dst = data;
  start = u64_stats_fetch_begin_irq(&hwstats->syncp);

  for (i = 0; i < ARRAY_SIZE(fe_gdma_str); i++)
   *data_dst++ = *data_src++;

 } while (u64_stats_fetch_retry_irq(&hwstats->syncp, start));
}
