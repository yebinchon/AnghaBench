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
struct sg_io_hdr {char interface_id; int dxfer_len; int dxfer_direction; int flags; scalar_t__ cmd_len; int /*<<< orphan*/  duration; int /*<<< orphan*/  dxferp; int /*<<< orphan*/  iovec_count; } ;
struct scsi_request {scalar_t__ retries; int /*<<< orphan*/  cmd; } ;
struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct gendisk {int dummy; } ;
struct bio {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 scalar_t__ BLK_MAX_CDB ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  REQ_OP_SCSI_IN ; 
 int /*<<< orphan*/  REQ_OP_SCSI_OUT ; 
#define  SG_DXFER_FROM_DEV 130 
#define  SG_DXFER_TO_DEV 129 
#define  SG_DXFER_TO_FROM_DEV 128 
 int SG_FLAG_Q_AT_HEAD ; 
 int FUNC2 (struct request*,struct sg_io_hdr*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct gendisk*,struct request*,int) ; 
 int FUNC4 (struct request_queue*,struct request*,struct sg_io_hdr*,int /*<<< orphan*/ ) ; 
 struct request* FUNC5 (struct request_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int FUNC7 (struct request_queue*,struct request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct request_queue*,struct request*,int /*<<< orphan*/ *,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iovec**,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct iov_iter*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct iovec*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC15 (struct request*) ; 
 struct scsi_request* FUNC16 (struct request*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_request*) ; 

__attribute__((used)) static int FUNC18(struct request_queue *q, struct gendisk *bd_disk,
		struct sg_io_hdr *hdr, fmode_t mode)
{
	unsigned long start_time;
	ssize_t ret = 0;
	int writing = 0;
	int at_head = 0;
	struct request *rq;
	struct scsi_request *req;
	struct bio *bio;

	if (hdr->interface_id != 'S')
		return -EINVAL;

	if (hdr->dxfer_len > (FUNC14(q) << 9))
		return -EIO;

	if (hdr->dxfer_len)
		switch (hdr->dxfer_direction) {
		default:
			return -EINVAL;
		case SG_DXFER_TO_DEV:
			writing = 1;
			break;
		case SG_DXFER_TO_FROM_DEV:
		case SG_DXFER_FROM_DEV:
			break;
		}
	if (hdr->flags & SG_FLAG_Q_AT_HEAD)
		at_head = 1;

	ret = -ENOMEM;
	rq = FUNC5(q, writing ? REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
	if (FUNC0(rq))
		return FUNC1(rq);
	req = FUNC16(rq);

	if (hdr->cmd_len > BLK_MAX_CDB) {
		req->cmd = FUNC13(hdr->cmd_len, GFP_KERNEL);
		if (!req->cmd)
			goto out_put_request;
	}

	ret = FUNC4(q, rq, hdr, mode);
	if (ret < 0)
		goto out_free_cdb;

	ret = 0;
	if (hdr->iovec_count) {
		struct iov_iter i;
		struct iovec *iov = NULL;

		ret = FUNC9(FUNC15(rq),
				   hdr->dxferp, hdr->iovec_count,
				   0, &iov, &i);
		if (ret < 0)
			goto out_free_cdb;

		/* SG_IO howto says that the shorter of the two wins */
		FUNC10(&i, hdr->dxfer_len);

		ret = FUNC8(q, rq, NULL, &i, GFP_KERNEL);
		FUNC12(iov);
	} else if (hdr->dxfer_len)
		ret = FUNC7(q, rq, NULL, hdr->dxferp, hdr->dxfer_len,
				      GFP_KERNEL);

	if (ret)
		goto out_free_cdb;

	bio = rq->bio;
	req->retries = 0;

	start_time = jiffies;

	/* ignore return value. All information is passed back to caller
	 * (if he doesn't check that is his problem).
	 * N.B. a non-zero SCSI status is _not_ necessarily an error.
	 */
	FUNC3(q, bd_disk, rq, at_head);

	hdr->duration = FUNC11(jiffies - start_time);

	ret = FUNC2(rq, hdr, bio);

out_free_cdb:
	FUNC17(req);
out_put_request:
	FUNC6(rq);
	return ret;
}