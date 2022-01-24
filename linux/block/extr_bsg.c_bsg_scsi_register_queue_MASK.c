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
struct request_queue {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int FUNC2 (struct request_queue*,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bsg_scsi_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

int FUNC4(struct request_queue *q, struct device *parent)
{
	if (!FUNC1(q)) {
		FUNC0(true, "Attempt to register a non-SCSI queue\n");
		return -EINVAL;
	}

	return FUNC2(q, parent, FUNC3(parent), &bsg_scsi_ops);
}