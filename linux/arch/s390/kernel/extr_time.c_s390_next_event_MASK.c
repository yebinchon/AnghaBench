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
struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock_comparator; } ;

/* Variables and functions */
 TYPE_1__ S390_lowcore ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(unsigned long delta,
			   struct clock_event_device *evt)
{
	S390_lowcore.clock_comparator = FUNC0() + delta;
	FUNC1(S390_lowcore.clock_comparator);
	return 0;
}