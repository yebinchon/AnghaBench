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
 int /*<<< orphan*/  CONTROL_MODE_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct clock_event_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*,unsigned long) ; 

__attribute__((used)) static int FUNC3(unsigned long evt,
				       struct clock_event_device *ce)
{
	FUNC0(ce);
	FUNC2(ce, evt);
	FUNC1(ce, CONTROL_MODE_ONESHOT);

	return 0;
}