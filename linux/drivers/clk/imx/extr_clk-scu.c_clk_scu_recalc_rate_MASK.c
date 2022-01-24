#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct imx_sc_rpc_msg {int size; int /*<<< orphan*/  func; int /*<<< orphan*/  svc; int /*<<< orphan*/  ver; } ;
struct TYPE_5__ {int /*<<< orphan*/  rate; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  resource; } ;
struct TYPE_6__ {TYPE_2__ resp; TYPE_1__ req; } ;
struct imx_sc_msg_get_clock_rate {TYPE_3__ data; struct imx_sc_rpc_msg hdr; } ;
struct clk_scu {int /*<<< orphan*/  clk_type; int /*<<< orphan*/  rsrc_id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_SC_PM_FUNC_GET_CLOCK_RATE ; 
 int /*<<< orphan*/  IMX_SC_RPC_SVC_PM ; 
 int /*<<< orphan*/  IMX_SC_RPC_VERSION ; 
 int /*<<< orphan*/  ccm_ipc_handle ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct imx_sc_msg_get_clock_rate*,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct clk_scu* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC6(struct clk_hw *hw,
					 unsigned long parent_rate)
{
	struct clk_scu *clk = FUNC5(hw);
	struct imx_sc_msg_get_clock_rate msg;
	struct imx_sc_rpc_msg *hdr = &msg.hdr;
	int ret;

	hdr->ver = IMX_SC_RPC_VERSION;
	hdr->svc = IMX_SC_RPC_SVC_PM;
	hdr->func = IMX_SC_PM_FUNC_GET_CLOCK_RATE;
	hdr->size = 2;

	msg.data.req.resource = FUNC1(clk->rsrc_id);
	msg.data.req.clk = clk->clk_type;

	ret = FUNC2(ccm_ipc_handle, &msg, true);
	if (ret) {
		FUNC4("%s: failed to get clock rate %d\n",
		       FUNC0(hw), ret);
		return 0;
	}

	return FUNC3(msg.data.resp.rate);
}