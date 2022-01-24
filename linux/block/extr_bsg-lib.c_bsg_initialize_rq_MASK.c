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
struct bsg_job {struct bsg_job* dd_data; int /*<<< orphan*/  reply_len; void* reply; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 struct bsg_job* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct request *req)
{
	struct bsg_job *job = FUNC0(req);
	void *reply = job->reply;

	FUNC1(job, 0, sizeof(*job));
	job->reply = reply;
	job->reply_len = SCSI_SENSE_BUFFERSIZE;
	job->dd_data = job + 1;
}