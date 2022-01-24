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
struct binder_task_work_cb {int /*<<< orphan*/  twork; scalar_t__ file; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__*) ; 
 int /*<<< orphan*/  binder_do_fd_close ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_task_work_cb*) ; 
 struct binder_task_work_cb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	struct binder_task_work_cb *twcb;

	twcb = FUNC3(sizeof(*twcb), GFP_KERNEL);
	if (!twcb)
		return;
	FUNC1(&twcb->twork, binder_do_fd_close);
	FUNC0(fd, &twcb->file);
	if (twcb->file)
		FUNC4(current, &twcb->twork, true);
	else
		FUNC2(twcb);
}