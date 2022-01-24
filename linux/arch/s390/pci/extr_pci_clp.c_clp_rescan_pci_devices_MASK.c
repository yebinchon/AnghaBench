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
struct clp_req_rsp_list_pci {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __clp_add ; 
 struct clp_req_rsp_list_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clp_req_rsp_list_pci*) ; 
 int FUNC2 (struct clp_req_rsp_list_pci*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(void)
{
	struct clp_req_rsp_list_pci *rrb;
	int rc;

	FUNC3();

	rrb = FUNC0(GFP_KERNEL);
	if (!rrb)
		return -ENOMEM;

	rc = FUNC2(rrb, NULL, __clp_add);

	FUNC1(rrb);
	return rc;
}