#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct clp_state_data {int state; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct clp_req_rsp_list_pci {int dummy; } ;
typedef  enum zpci_state { ____Placeholder_zpci_state } zpci_state ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ZPCI_FN_STATE_RESERVED ; 
 int /*<<< orphan*/  __clp_get_state ; 
 struct clp_req_rsp_list_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clp_req_rsp_list_pci*) ; 
 int FUNC2 (struct clp_req_rsp_list_pci*,struct clp_state_data*,int /*<<< orphan*/ ) ; 

int FUNC3(u32 fid, enum zpci_state *state)
{
	struct clp_req_rsp_list_pci *rrb;
	struct clp_state_data sd = {fid, ZPCI_FN_STATE_RESERVED};
	int rc;

	rrb = FUNC0(GFP_ATOMIC);
	if (!rrb)
		return -ENOMEM;

	rc = FUNC2(rrb, &sd, __clp_get_state);
	if (!rc)
		*state = sd.state;

	FUNC1(rrb);
	return rc;
}