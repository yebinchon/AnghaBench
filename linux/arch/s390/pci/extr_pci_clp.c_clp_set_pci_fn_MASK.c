#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {scalar_t__ rsp; int len; } ;
struct TYPE_8__ {TYPE_3__ hdr; int /*<<< orphan*/  fh; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {void* ndas; void* oc; int /*<<< orphan*/  fh; TYPE_1__ hdr; } ;
struct clp_req_rsp_set_pci {TYPE_4__ response; TYPE_2__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_LPS_PCI ; 
 scalar_t__ CLP_RC_OK ; 
 scalar_t__ CLP_RC_SETPCIFN_BUSY ; 
 int /*<<< orphan*/  CLP_SET_PCI_FN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clp_req_rsp_set_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clp_req_rsp_set_pci*) ; 
 int FUNC2 (struct clp_req_rsp_set_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clp_req_rsp_set_pci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(u32 *fh, u8 nr_dma_as, u8 command)
{
	struct clp_req_rsp_set_pci *rrb;
	int rc, retries = 100;

	rrb = FUNC0(GFP_KERNEL);
	if (!rrb)
		return -ENOMEM;

	do {
		FUNC3(rrb, 0, sizeof(*rrb));
		rrb->request.hdr.len = sizeof(rrb->request);
		rrb->request.hdr.cmd = CLP_SET_PCI_FN;
		rrb->response.hdr.len = sizeof(rrb->response);
		rrb->request.fh = *fh;
		rrb->request.oc = command;
		rrb->request.ndas = nr_dma_as;

		rc = FUNC2(rrb, CLP_LPS_PCI);
		if (rrb->response.hdr.rsp == CLP_RC_SETPCIFN_BUSY) {
			retries--;
			if (retries < 0)
				break;
			FUNC4(20);
		}
	} while (rrb->response.hdr.rsp == CLP_RC_SETPCIFN_BUSY);

	if (!rc && rrb->response.hdr.rsp == CLP_RC_OK)
		*fh = rrb->response.fh;
	else {
		FUNC5("Set PCI FN:\n");
		FUNC6(rrb->response.hdr.rsp, rc);
		rc = -EIO;
	}
	FUNC1(rrb);
	return rc;
}