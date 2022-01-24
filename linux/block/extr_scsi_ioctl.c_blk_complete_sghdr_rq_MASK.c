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
struct sg_io_hdr {int status; int sb_len_wr; scalar_t__ sbp; scalar_t__ mx_sb_len; int /*<<< orphan*/  resid; int /*<<< orphan*/  info; int /*<<< orphan*/  driver_status; int /*<<< orphan*/  host_status; int /*<<< orphan*/  masked_status; int /*<<< orphan*/  msg_status; } ;
struct scsi_request {int result; int /*<<< orphan*/  sense; scalar_t__ sense_len; int /*<<< orphan*/  resid_len; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SG_INFO_CHECK ; 
 int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct scsi_request* FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct request *rq, struct sg_io_hdr *hdr,
				 struct bio *bio)
{
	struct scsi_request *req = FUNC6(rq);
	int r, ret = 0;

	/*
	 * fill in all the output members
	 */
	hdr->status = req->result & 0xff;
	hdr->masked_status = FUNC7(req->result);
	hdr->msg_status = FUNC5(req->result);
	hdr->host_status = FUNC3(req->result);
	hdr->driver_status = FUNC2(req->result);
	hdr->info = 0;
	if (hdr->masked_status || hdr->host_status || hdr->driver_status)
		hdr->info |= SG_INFO_CHECK;
	hdr->resid = req->resid_len;
	hdr->sb_len_wr = 0;

	if (req->sense_len && hdr->sbp) {
		int len = FUNC4((unsigned int) hdr->mx_sb_len, req->sense_len);

		if (!FUNC1(hdr->sbp, req->sense, len))
			hdr->sb_len_wr = len;
		else
			ret = -EFAULT;
	}

	r = FUNC0(bio);
	if (!ret)
		ret = r;

	return ret;
}