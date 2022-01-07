
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_smd_rpm {int enabled; scalar_t__ branch; int rate; struct clk_smd_rpm* peer; } ;
struct clk_hw {int dummy; } ;


 int clk_smd_rpm_set_rate_active (struct clk_smd_rpm*,unsigned long) ;
 int clk_smd_rpm_set_rate_sleep (struct clk_smd_rpm*,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpm_smd_clk_lock ;
 int to_active_sleep (struct clk_smd_rpm*,int ,unsigned long*,unsigned long*) ;
 struct clk_smd_rpm* to_clk_smd_rpm (struct clk_hw*) ;

__attribute__((used)) static void clk_smd_rpm_unprepare(struct clk_hw *hw)
{
 struct clk_smd_rpm *r = to_clk_smd_rpm(hw);
 struct clk_smd_rpm *peer = r->peer;
 unsigned long peer_rate = 0, peer_sleep_rate = 0;
 unsigned long active_rate, sleep_rate;
 int ret;

 mutex_lock(&rpm_smd_clk_lock);

 if (!r->rate)
  goto out;


 if (peer->enabled)
  to_active_sleep(peer, peer->rate, &peer_rate,
    &peer_sleep_rate);

 active_rate = r->branch ? !!peer_rate : peer_rate;
 ret = clk_smd_rpm_set_rate_active(r, active_rate);
 if (ret)
  goto out;

 sleep_rate = r->branch ? !!peer_sleep_rate : peer_sleep_rate;
 ret = clk_smd_rpm_set_rate_sleep(r, sleep_rate);
 if (ret)
  goto out;

 r->enabled = 0;

out:
 mutex_unlock(&rpm_smd_clk_lock);
}
