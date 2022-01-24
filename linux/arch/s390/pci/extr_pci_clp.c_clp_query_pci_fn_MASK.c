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
typedef  int /*<<< orphan*/  u32 ;
struct zpci_dev {int dummy; } ;
struct TYPE_7__ {int len; scalar_t__ rsp; } ;
struct TYPE_8__ {TYPE_3__ hdr; int /*<<< orphan*/  pfgid; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  fh; TYPE_1__ hdr; } ;
struct clp_req_rsp_query_pci {TYPE_4__ response; TYPE_2__ request; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLP_LPS_PCI ; 
 int /*<<< orphan*/  CLP_QUERY_PCI_FN ; 
 scalar_t__ CLP_RC_OK ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clp_req_rsp_query_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clp_req_rsp_query_pci*) ; 
 int FUNC2 (struct zpci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clp_req_rsp_query_pci*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zpci_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct clp_req_rsp_query_pci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC8(struct zpci_dev *zdev, u32 fh)
{
	struct clp_req_rsp_query_pci *rrb;
	int rc;

	rrb = FUNC0(GFP_KERNEL);
	if (!rrb)
		return -ENOMEM;

	FUNC5(rrb, 0, sizeof(*rrb));
	rrb->request.hdr.len = sizeof(rrb->request);
	rrb->request.hdr.cmd = CLP_QUERY_PCI_FN;
	rrb->response.hdr.len = sizeof(rrb->response);
	rrb->request.fh = fh;

	rc = FUNC3(rrb, CLP_LPS_PCI);
	if (!rc && rrb->response.hdr.rsp == CLP_RC_OK) {
		rc = FUNC4(zdev, &rrb->response);
		if (rc)
			goto out;
		rc = FUNC2(zdev, rrb->response.pfgid);
	} else {
		FUNC6("Q PCI FN:\n");
		FUNC7(rrb->response.hdr.rsp, rc);
		rc = -EIO;
	}
out:
	FUNC1(rrb);
	return rc;
}