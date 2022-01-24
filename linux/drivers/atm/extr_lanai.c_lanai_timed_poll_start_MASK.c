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
struct TYPE_3__ {scalar_t__ expires; } ;
struct lanai_dev {TYPE_1__ timer; } ;

/* Variables and functions */
 scalar_t__ LANAI_POLL_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lanai_timed_poll ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct lanai_dev *lanai)
{
	FUNC1(&lanai->timer, lanai_timed_poll, 0);
	lanai->timer.expires = jiffies + LANAI_POLL_PERIOD;
	FUNC0(&lanai->timer);
}