
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcs_cmd {int data; int addr; int member_0; } ;
struct clk_rpmh {int aggr_state; int last_sent_aggr_state; int res_name; int dev; int res_addr; } ;


 int BCM_TCS_CMD (int,int,int ,int) ;
 int RPMH_ACTIVE_ONLY_STATE ;
 int dev_err (int ,char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpmh_clk_lock ;
 int rpmh_write_async (int ,int ,struct tcs_cmd*,int) ;

__attribute__((used)) static int clk_rpmh_bcm_send_cmd(struct clk_rpmh *c, bool enable)
{
 struct tcs_cmd cmd = { 0 };
 u32 cmd_state;
 int ret;

 mutex_lock(&rpmh_clk_lock);

 cmd_state = 0;
 if (enable) {
  cmd_state = 1;
  if (c->aggr_state)
   cmd_state = c->aggr_state;
 }

 if (c->last_sent_aggr_state == cmd_state) {
  mutex_unlock(&rpmh_clk_lock);
  return 0;
 }

 cmd.addr = c->res_addr;
 cmd.data = BCM_TCS_CMD(1, enable, 0, cmd_state);

 ret = rpmh_write_async(c->dev, RPMH_ACTIVE_ONLY_STATE, &cmd, 1);
 if (ret) {
  dev_err(c->dev, "set active state of %s failed: (%d)\n",
   c->res_name, ret);
  mutex_unlock(&rpmh_clk_lock);
  return ret;
 }

 c->last_sent_aggr_state = cmd_state;

 mutex_unlock(&rpmh_clk_lock);

 return 0;
}
