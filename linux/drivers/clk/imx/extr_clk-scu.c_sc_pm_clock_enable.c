
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct imx_sc_rpc_msg {int size; int func; int svc; int ver; } ;
struct imx_sc_msg_req_clock_enable {int enable; int autog; int clk; int resource; struct imx_sc_rpc_msg hdr; } ;
struct imx_sc_ipc {int dummy; } ;


 int IMX_SC_PM_FUNC_CLOCK_ENABLE ;
 int IMX_SC_RPC_SVC_PM ;
 int IMX_SC_RPC_VERSION ;
 int ccm_ipc_handle ;
 int cpu_to_le16 (int ) ;
 int imx_scu_call_rpc (int ,struct imx_sc_msg_req_clock_enable*,int) ;

__attribute__((used)) static int sc_pm_clock_enable(struct imx_sc_ipc *ipc, u16 resource,
         u8 clk, bool enable, bool autog)
{
 struct imx_sc_msg_req_clock_enable msg;
 struct imx_sc_rpc_msg *hdr = &msg.hdr;

 hdr->ver = IMX_SC_RPC_VERSION;
 hdr->svc = IMX_SC_RPC_SVC_PM;
 hdr->func = IMX_SC_PM_FUNC_CLOCK_ENABLE;
 hdr->size = 3;

 msg.resource = cpu_to_le16(resource);
 msg.clk = clk;
 msg.enable = enable;
 msg.autog = autog;

 return imx_scu_call_rpc(ccm_ipc_handle, &msg, 1);
}
