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
struct nullb_queue {int /*<<< orphan*/  wait; } ;
struct nullb_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct nullb_cmd* FUNC1 (struct nullb_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static struct nullb_cmd *FUNC5(struct nullb_queue *nq, int can_wait)
{
	struct nullb_cmd *cmd;
	FUNC0(wait);

	cmd = FUNC1(nq);
	if (cmd || !can_wait)
		return cmd;

	do {
		FUNC4(&nq->wait, &wait, TASK_UNINTERRUPTIBLE);
		cmd = FUNC1(nq);
		if (cmd)
			break;

		FUNC3();
	} while (1);

	FUNC2(&nq->wait, &wait);
	return cmd;
}