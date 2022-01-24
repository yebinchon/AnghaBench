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
struct floppy_state {scalar_t__ state; int /*<<< orphan*/  wanted; int /*<<< orphan*/  wait; } ;
typedef  enum swim_state { ____Placeholder_swim_state } swim_state ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ available ; 
 scalar_t__ idle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  swim3_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct floppy_state *fs, enum swim_state state,
		      int interruptible)
{
	unsigned long flags;

	FUNC2("%s", "-> grab drive\n");

	FUNC0(&swim3_lock, flags);
	if (fs->state != idle && fs->state != available) {
		++fs->wanted;
		/* this will enable irqs in order to sleep */
		if (!interruptible)
			FUNC4(fs->wait,
                                        fs->state == available,
                                        swim3_lock);
		else if (FUNC3(fs->wait,
					fs->state == available,
					swim3_lock)) {
			--fs->wanted;
			FUNC1(&swim3_lock, flags);
			return -EINTR;
		}
		--fs->wanted;
	}
	fs->state = state;
	FUNC1(&swim3_lock, flags);

	return 0;
}