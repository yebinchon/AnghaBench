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
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HW_MCR ; 
 scalar_t__ SET_REG ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 TYPE_1__ priv ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	FUNC2(evt);

	/* enable reset and stop on match */
	FUNC3(FUNC0(0) | FUNC1(0),
		       priv.base + HW_MCR + SET_REG);
	return 0;
}