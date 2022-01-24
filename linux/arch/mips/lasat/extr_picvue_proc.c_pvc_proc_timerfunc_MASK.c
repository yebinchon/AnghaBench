#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int DISPLAY ; 
 int LEFT ; 
 int RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ scroll_dir ; 
 scalar_t__ scroll_interval ; 
 TYPE_1__ timer ; 

void FUNC2(struct timer_list *unused)
{
	if (scroll_dir < 0)
		FUNC1(DISPLAY|RIGHT);
	else if (scroll_dir > 0)
		FUNC1(DISPLAY|LEFT);

	timer.expires = jiffies + scroll_interval;
	FUNC0(&timer);
}