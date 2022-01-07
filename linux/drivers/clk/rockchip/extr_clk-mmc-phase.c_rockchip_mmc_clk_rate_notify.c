
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_mmc_clock {int cached_phase; int hw; } ;
struct notifier_block {int dummy; } ;
struct clk_notifier_data {scalar_t__ old_rate; scalar_t__ new_rate; } ;


 int EINVAL ;
 int NOTIFY_DONE ;
 unsigned long POST_RATE_CHANGE ;
 unsigned long PRE_RATE_CHANGE ;
 int rockchip_mmc_get_phase (int *) ;
 int rockchip_mmc_set_phase (int *,int ) ;
 struct rockchip_mmc_clock* to_rockchip_mmc_clock (struct notifier_block*) ;

__attribute__((used)) static int rockchip_mmc_clk_rate_notify(struct notifier_block *nb,
     unsigned long event, void *data)
{
 struct rockchip_mmc_clock *mmc_clock = to_rockchip_mmc_clock(nb);
 struct clk_notifier_data *ndata = data;
 if (ndata->old_rate <= ndata->new_rate)
  return NOTIFY_DONE;

 if (event == PRE_RATE_CHANGE)
  mmc_clock->cached_phase =
   rockchip_mmc_get_phase(&mmc_clock->hw);
 else if (mmc_clock->cached_phase != -EINVAL &&
   event == POST_RATE_CHANGE)
  rockchip_mmc_set_phase(&mmc_clock->hw, mmc_clock->cached_phase);

 return NOTIFY_DONE;
}
