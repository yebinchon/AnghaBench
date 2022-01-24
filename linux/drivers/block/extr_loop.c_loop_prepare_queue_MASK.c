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
struct loop_device {int /*<<< orphan*/  worker_task; int /*<<< orphan*/  lo_number; int /*<<< orphan*/  worker; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIN_NICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop_kthread_worker_fn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct loop_device *lo)
{
	FUNC1(&lo->worker);
	lo->worker_task = FUNC2(loop_kthread_worker_fn,
			&lo->worker, "loop%d", lo->lo_number);
	if (FUNC0(lo->worker_task))
		return -ENOMEM;
	FUNC3(lo->worker_task, MIN_NICE);
	return 0;
}