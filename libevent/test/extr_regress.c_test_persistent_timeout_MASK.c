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
struct timeval {int tv_usec; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct event*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  global_base ; 
 int /*<<< orphan*/  periodic_timeout_cb ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct timeval tv;
	struct event ev;
	int count = 0;

	FUNC4(&tv);
	tv.tv_usec = 10000;

	FUNC1(&ev, global_base, -1, EV_TIMEOUT|EV_PERSIST,
	    periodic_timeout_cb, &count);
	FUNC0(&ev, &tv);

	FUNC3();

	FUNC2(&ev);
}