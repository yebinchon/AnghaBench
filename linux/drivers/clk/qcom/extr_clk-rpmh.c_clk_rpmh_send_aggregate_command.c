
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcs_cmd {int data; int addr; int member_0; } ;
struct clk_rpmh {int aggr_state; int res_on_val; int last_sent_aggr_state; TYPE_1__* peer; int res_name; int dev; int res_addr; } ;
typedef enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;
struct TYPE_2__ {int last_sent_aggr_state; } ;


 int BIT (int) ;
 int RPMH_ACTIVE_ONLY_STATE ;
 int RPMH_SLEEP_STATE ;
 int RPMH_WAKE_ONLY_STATE ;
 int dev_err (int ,char*,char*,int ,int) ;
 scalar_t__ has_state_changed (struct clk_rpmh*,int) ;
 int rpmh_write_async (int ,int,struct tcs_cmd*,int) ;

__attribute__((used)) static int clk_rpmh_send_aggregate_command(struct clk_rpmh *c)
{
 struct tcs_cmd cmd = { 0 };
 u32 cmd_state, on_val;
 enum rpmh_state state = RPMH_SLEEP_STATE;
 int ret;

 cmd.addr = c->res_addr;
 cmd_state = c->aggr_state;
 on_val = c->res_on_val;

 for (; state <= RPMH_ACTIVE_ONLY_STATE; state++) {
  if (has_state_changed(c, state)) {
   if (cmd_state & BIT(state))
    cmd.data = on_val;

   ret = rpmh_write_async(c->dev, state, &cmd, 1);
   if (ret) {
    dev_err(c->dev, "set %s state of %s failed: (%d)\n",
     !state ? "sleep" :
     state == RPMH_WAKE_ONLY_STATE ?
     "wake" : "active", c->res_name, ret);
    return ret;
   }
  }
 }

 c->last_sent_aggr_state = c->aggr_state;
 c->peer->last_sent_aggr_state = c->last_sent_aggr_state;

 return 0;
}
