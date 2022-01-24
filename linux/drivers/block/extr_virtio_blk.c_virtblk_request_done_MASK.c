#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtblk_req {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_offset; int /*<<< orphan*/  bv_page; } ;
struct request {int rq_flags; TYPE_1__ special_vec; } ;

/* Variables and functions */
#define  REQ_OP_SCSI_IN 129 
#define  REQ_OP_SCSI_OUT 128 
 int RQF_SPECIAL_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct virtblk_req* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtblk_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 

__attribute__((used)) static inline void FUNC7(struct request *req)
{
	struct virtblk_req *vbr = FUNC1(req);

	if (req->rq_flags & RQF_SPECIAL_PAYLOAD) {
		FUNC2(FUNC3(req->special_vec.bv_page) +
		      req->special_vec.bv_offset);
	}

	switch (FUNC4(req)) {
	case REQ_OP_SCSI_IN:
	case REQ_OP_SCSI_OUT:
		FUNC6(req);
		break;
	}

	FUNC0(req, FUNC5(vbr));
}