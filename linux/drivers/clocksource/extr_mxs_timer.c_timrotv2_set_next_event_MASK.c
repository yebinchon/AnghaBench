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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 scalar_t__ mxs_timrot_base ; 

__attribute__((used)) static int FUNC2(unsigned long evt,
					struct clock_event_device *dev)
{
	/* timrot decrements the count */
	FUNC1(evt, mxs_timrot_base + FUNC0(0));

	return 0;
}