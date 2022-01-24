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
struct TYPE_2__ {unsigned int num; } ;

/* Variables and functions */
 unsigned int HPET_TN_32BIT ; 
 unsigned int HPET_TN_ENABLE ; 
 unsigned int HPET_TN_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_1__* FUNC1 (struct clock_event_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	unsigned int channel = FUNC1(evt)->num;
	unsigned int cfg;

	cfg = FUNC2(FUNC0(channel));
	cfg &= ~HPET_TN_PERIODIC;
	cfg |= HPET_TN_ENABLE | HPET_TN_32BIT;
	FUNC3(cfg, FUNC0(channel));

	return 0;
}