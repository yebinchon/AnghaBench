
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct TYPE_5__ {int rate; } ;
struct TYPE_4__ {int clk; int resource; } ;
struct TYPE_6__ {TYPE_2__ resp; TYPE_1__ req; } ;
struct imx_sc_msg_get_clock_rate {TYPE_3__ data; struct imx_sc_rpc_msg hdr; } ;
struct clk_scu {int clk_type; int rsrc_id; } ;
struct clk_hw {int dummy; } ;


 int IMX_SC_PM_FUNC_GET_CLOCK_RATE ;
 int IMX_SC_RPC_SVC_PM ;
 int IMX_SC_RPC_VERSION ;
 int ccm_ipc_handle ;
 int clk_hw_get_name (struct clk_hw*) ;
 int cpu_to_le16 (int ) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_get_clock_rate*,int) ;
 unsigned long le32_to_cpu (int ) ;
 int pr_err (char*,int ,int) ;
 struct clk_scu* to_clk_scu (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_scu_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_scu *clk = to_clk_scu(hw);
 struct imx_sc_msg_get_clock_rate msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;
 int ret;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PM;
 hdr->func = IMX_SC_PM_FUNC_GET_CLOCK_RATE;
 hdr->size = 2;

 msg.data.req.resource = cpu_to_le16(clk->rsrc_id);
 msg.data.req.clk = clk->clk_type;

 ret = imx_scu_call_rpc(ccm_ipc_handle, &msg, 1);
 if (ret) {
  pr_err("%s: failed to get clock rate %d\n",
         clk_hw_get_name(hw), ret);
  return 0;
 }

 return le32_to_cpu(msg.data.resp.rate);
}
