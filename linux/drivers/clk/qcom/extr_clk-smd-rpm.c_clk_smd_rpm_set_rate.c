
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_smd_rpm {unsigned long rate; scalar_t__ enabled; struct clk_smd_rpm* peer; } ;
struct clk_hw {int dummy; } ;


 int clk_smd_rpm_set_rate_active (struct clk_smd_rpm*,unsigned long) ;
 int clk_smd_rpm_set_rate_sleep (struct clk_smd_rpm*,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm_smd_clk_lock ;
 int to_active_sleep (struct clk_smd_rpm*,unsigned long,unsigned long*,unsigned long*) ;
 struct clk_smd_rpm* to_clk_smd_rpm (struct clk_hw*) ;

__attribute__((used)) static int clk_smd_rpm_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_smd_rpm *r = to_clk_smd_rpm(hw);
 struct clk_smd_rpm *peer = r->peer;
 unsigned long active_rate, sleep_rate;
 unsigned long this_rate = 0, this_sleep_rate = 0;
 unsigned long peer_rate = 0, peer_sleep_rate = 0;
 int ret = 0;

 mutex_lock(&rpm_smd_clk_lock);

 if (!r->enabled)
  goto out;

 to_active_sleep(r, rate, &this_rate, &this_sleep_rate);


 if (peer->enabled)
  to_active_sleep(peer, peer->rate,
    &peer_rate, &peer_sleep_rate);

 active_rate = max(this_rate, peer_rate);
 ret = clk_smd_rpm_set_rate_active(r, active_rate);
 if (ret)
  goto out;

 sleep_rate = max(this_sleep_rate, peer_sleep_rate);
 ret = clk_smd_rpm_set_rate_sleep(r, sleep_rate);
 if (ret)
  goto out;

 r->rate = rate;

out:
 mutex_unlock(&rpm_smd_clk_lock);

 return ret;
}
