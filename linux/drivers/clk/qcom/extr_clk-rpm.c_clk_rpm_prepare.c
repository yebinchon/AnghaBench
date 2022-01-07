
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rpm {int enabled; scalar_t__ branch; int rate; struct clk_rpm* peer; } ;
struct clk_hw {int dummy; } ;


 int clk_rpm_set_rate_active (struct clk_rpm*,unsigned long) ;
 int clk_rpm_set_rate_sleep (struct clk_rpm*,unsigned long) ;
 unsigned long max (unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm_clk_lock ;
 int to_active_sleep (struct clk_rpm*,int ,unsigned long*,unsigned long*) ;
 struct clk_rpm* to_clk_rpm (struct clk_hw*) ;

__attribute__((used)) static int clk_rpm_prepare(struct clk_hw *hw)
{
 struct clk_rpm *r = to_clk_rpm(hw);
 struct clk_rpm *peer = r->peer;
 unsigned long this_rate = 0, this_sleep_rate = 0;
 unsigned long peer_rate = 0, peer_sleep_rate = 0;
 unsigned long active_rate, sleep_rate;
 int ret = 0;

 mutex_lock(&rpm_clk_lock);


 if (!r->rate)
  goto out;

 to_active_sleep(r, r->rate, &this_rate, &this_sleep_rate);


 if (peer->enabled)
  to_active_sleep(peer, peer->rate,
    &peer_rate, &peer_sleep_rate);

 active_rate = max(this_rate, peer_rate);

 if (r->branch)
  active_rate = !!active_rate;

 ret = clk_rpm_set_rate_active(r, active_rate);
 if (ret)
  goto out;

 sleep_rate = max(this_sleep_rate, peer_sleep_rate);
 if (r->branch)
  sleep_rate = !!sleep_rate;

 ret = clk_rpm_set_rate_sleep(r, sleep_rate);
 if (ret)

  ret = clk_rpm_set_rate_active(r, peer_rate);

out:
 if (!ret)
  r->enabled = 1;

 mutex_unlock(&rpm_clk_lock);

 return ret;
}
