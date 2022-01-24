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
struct request {int dummy; } ;
struct bsg_job {int /*<<< orphan*/  reply; } ;
struct blk_mq_tag_set {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 struct bsg_job* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct blk_mq_tag_set *set, struct request *req,
		       unsigned int hctx_idx, unsigned int numa_node)
{
	struct bsg_job *job = FUNC0(req);

	job->reply = FUNC1(SCSI_SENSE_BUFFERSIZE, GFP_KERNEL);
	if (!job->reply)
		return -ENOMEM;
	return 0;
}