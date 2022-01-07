
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_rpmh {int state; int valid_state_mask; int aggr_state; int res_name; TYPE_1__* peer; } ;
struct TYPE_2__ {int state; int aggr_state; } ;


 int WARN (int,char*,int ,char*) ;
 int clk_rpmh_send_aggregate_command (struct clk_rpmh*) ;

__attribute__((used)) static int clk_rpmh_aggregate_state_send_command(struct clk_rpmh *c,
      bool enable)
{
 int ret;


 if (enable == c->state)
  return 0;

 c->state = enable ? c->valid_state_mask : 0;
 c->aggr_state = c->state | c->peer->state;
 c->peer->aggr_state = c->aggr_state;

 ret = clk_rpmh_send_aggregate_command(c);
 if (!ret)
  return 0;

 if (ret && enable)
  c->state = 0;
 else if (ret)
  c->state = c->valid_state_mask;

 WARN(1, "clk: %s failed to %s\n", c->res_name,
      enable ? "enable" : "disable");
 return ret;
}
