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
struct sh_tmu_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sh_tmu_channel* FUNC1 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_tmu_channel*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned long delta,
				   struct clock_event_device *ced)
{
	struct sh_tmu_channel *ch = FUNC1(ced);

	FUNC0(!FUNC2(ced));

	/* program new delta value */
	FUNC3(ch, delta, 0);
	return 0;
}