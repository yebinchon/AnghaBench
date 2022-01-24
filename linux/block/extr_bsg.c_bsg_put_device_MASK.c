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
struct bsg_device {int /*<<< orphan*/  dev_list; int /*<<< orphan*/  ref_count; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_device*,char*) ; 
 int /*<<< orphan*/  bsg_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bsg_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct bsg_device *bd)
{
	struct request_queue *q = bd->queue;

	FUNC4(&bsg_mutex);

	if (!FUNC6(&bd->ref_count)) {
		FUNC5(&bsg_mutex);
		return 0;
	}

	FUNC2(&bd->dev_list);
	FUNC5(&bsg_mutex);

	FUNC1(bd, "tearing down\n");

	/*
	 * close can always block
	 */
	FUNC3(bd);
	FUNC0(q);
	return 0;
}