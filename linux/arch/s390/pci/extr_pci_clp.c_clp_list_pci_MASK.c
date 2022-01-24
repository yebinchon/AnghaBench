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
typedef  scalar_t__ u64 ;
struct TYPE_7__ {int len; scalar_t__ rsp; } ;
struct TYPE_8__ {int entry_size; struct clp_fh_list_entry* fh_list; scalar_t__ resume_token; TYPE_3__ hdr; int /*<<< orphan*/  uid_checking; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  cmd; } ;
struct TYPE_6__ {scalar_t__ resume_token; TYPE_1__ hdr; } ;
struct clp_req_rsp_list_pci {TYPE_4__ response; TYPE_2__ request; } ;
struct clp_fh_list_entry {int dummy; } ;

/* Variables and functions */
 int CLP_BLK_SIZE ; 
 int /*<<< orphan*/  CLP_LIST_PCI ; 
 int /*<<< orphan*/  CLP_LPS_PCI ; 
 scalar_t__ CLP_RC_OK ; 
 int EIO ; 
 int LIST_PCI_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct clp_req_rsp_list_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clp_req_rsp_list_pci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct clp_req_rsp_list_pci *rrb, void *data,
			void (*cb)(struct clp_fh_list_entry *, void *))
{
	u64 resume_token = 0;
	int entries, i, rc;

	do {
		FUNC2(rrb, 0, sizeof(*rrb));
		rrb->request.hdr.len = sizeof(rrb->request);
		rrb->request.hdr.cmd = CLP_LIST_PCI;
		/* store as many entries as possible */
		rrb->response.hdr.len = CLP_BLK_SIZE - LIST_PCI_HDR_LEN;
		rrb->request.resume_token = resume_token;

		/* Get PCI function handle list */
		rc = FUNC1(rrb, CLP_LPS_PCI);
		if (rc || rrb->response.hdr.rsp != CLP_RC_OK) {
			FUNC4("List PCI FN:\n");
			FUNC5(rrb->response.hdr.rsp, rc);
			rc = -EIO;
			goto out;
		}

		FUNC3(rrb->response.uid_checking);
		FUNC0(rrb->response.entry_size !=
			sizeof(struct clp_fh_list_entry));

		entries = (rrb->response.hdr.len - LIST_PCI_HDR_LEN) /
			rrb->response.entry_size;

		resume_token = rrb->response.resume_token;
		for (i = 0; i < entries; i++)
			cb(&rrb->response.fh_list[i], data);
	} while (resume_token);
out:
	return rc;
}