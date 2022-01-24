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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_PINNED ; 
 int /*<<< orphan*/  mce_timer ; 
 int /*<<< orphan*/  mce_timer_fn ; 
 struct timer_list* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct timer_list *t = FUNC0(&mce_timer);

	FUNC1(t, mce_timer_fn, TIMER_PINNED);
}