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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static int FUNC2(unsigned long delta,
			   struct clock_event_device *evt)
{
	unsigned int cnt;
	int res;

	cnt = FUNC0();
	cnt += delta;
	FUNC1(cnt);
	res = ((int)(FUNC0() - cnt) >= 0) ? -ETIME : 0;
	return res;
}