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
struct request_queue {int dummy; } ;
struct block_device {TYPE_1__* bd_part; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_sects; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct request_queue*,int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 

unsigned int FUNC3(struct block_device *bdev)
{
	struct request_queue *q = FUNC1(bdev);

	if (!FUNC2(q))
		return 0;

	return FUNC0(q, bdev->bd_part->nr_sects);
}