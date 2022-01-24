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
struct sg_io_v4 {scalar_t__ request_len; int /*<<< orphan*/  request; scalar_t__ din_xfer_len; scalar_t__ dout_xfer_len; } ;
struct scsi_request {scalar_t__ cmd_len; int /*<<< orphan*/  cmd; } ;
struct request {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ BLK_MAX_CDB ; 
 int EFAULT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct scsi_request* FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct request *rq, struct sg_io_v4 *hdr,
		fmode_t mode)
{
	struct scsi_request *sreq = FUNC4(rq);

	if (hdr->dout_xfer_len && hdr->din_xfer_len) {
		FUNC3("BIDI support in bsg has been removed.\n");
		return -EOPNOTSUPP;
	}

	sreq->cmd_len = hdr->request_len;
	if (sreq->cmd_len > BLK_MAX_CDB) {
		sreq->cmd = FUNC2(sreq->cmd_len, GFP_KERNEL);
		if (!sreq->cmd)
			return -ENOMEM;
	}

	if (FUNC1(sreq->cmd, FUNC5(hdr->request), sreq->cmd_len))
		return -EFAULT;
	if (FUNC0(sreq->cmd, mode))
		return -EPERM;
	return 0;
}