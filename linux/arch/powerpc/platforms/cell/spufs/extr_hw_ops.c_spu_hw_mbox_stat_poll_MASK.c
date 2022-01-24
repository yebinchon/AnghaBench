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
typedef  int u32 ;
struct spu_context {struct spu* spu; } ;
struct spu {int /*<<< orphan*/  register_lock; TYPE_1__* problem; } ;
typedef  int __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  mb_stat_R; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS2_ENABLE_MAILBOX_INTR ; 
 int /*<<< orphan*/  CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR ; 
 int /*<<< orphan*/  CLASS2_MAILBOX_INTR ; 
 int /*<<< orphan*/  CLASS2_MAILBOX_THRESHOLD_INTR ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __poll_t FUNC5(struct spu_context *ctx, __poll_t events)
{
	struct spu *spu = ctx->spu;
	__poll_t ret = 0;
	u32 stat;

	FUNC1(&spu->register_lock);
	stat = FUNC0(&spu->problem->mb_stat_R);

	/* if the requested event is there, return the poll
	   mask, otherwise enable the interrupt to get notified,
	   but first mark any pending interrupts as done so
	   we don't get woken up unnecessarily */

	if (events & (EPOLLIN | EPOLLRDNORM)) {
		if (stat & 0xff0000)
			ret |= EPOLLIN | EPOLLRDNORM;
		else {
			FUNC4(spu, 2, CLASS2_MAILBOX_INTR);
			FUNC3(spu, 2, CLASS2_ENABLE_MAILBOX_INTR);
		}
	}
	if (events & (EPOLLOUT | EPOLLWRNORM)) {
		if (stat & 0x00ff00)
			ret = EPOLLOUT | EPOLLWRNORM;
		else {
			FUNC4(spu, 2,
					CLASS2_MAILBOX_THRESHOLD_INTR);
			FUNC3(spu, 2,
					CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR);
		}
	}
	FUNC2(&spu->register_lock);
	return ret;
}