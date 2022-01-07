
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_set_clock_parent {int parent; int clk; int resource; struct imx_sc_rpc_msg hdr; } ;
struct clk_scu {int clk_type; int rsrc_id; } ;
struct clk_hw {int dummy; } ;


 int IMX_SC_PM_FUNC_SET_CLOCK_PARENT ;
 int IMX_SC_RPC_SVC_PM ;
 int IMX_SC_RPC_VERSION ;
 int ccm_ipc_handle ;
 int cpu_to_le16 (int ) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_set_clock_parent*,int) ;
 struct clk_scu* to_clk_scu (struct clk_hw*) ;

__attribute__((used)) static int clk_scu_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_scu *clk = to_clk_scu(hw);
 struct imx_sc_msg_set_clock_parent msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PM;
 hdr->func = IMX_SC_PM_FUNC_SET_CLOCK_PARENT;
 hdr->size = 2;

 msg.resource = cpu_to_le16(clk->rsrc_id);
 msg.clk = clk->clk_type;
 msg.parent = index;

 return imx_scu_call_rpc(ccm_ipc_handle, &msg, 1);
}
