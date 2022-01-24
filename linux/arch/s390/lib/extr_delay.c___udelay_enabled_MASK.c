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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  clock_comparator; } ;

/* Variables and functions */
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(unsigned long long usecs)
{
	u64 clock_saved, end;

	end = FUNC1() + (usecs << 12);
	do {
		clock_saved = 0;
		if (FUNC5(S390_lowcore.clock_comparator, end)) {
			clock_saved = FUNC2();
			FUNC4(end);
		}
		FUNC0();
		if (clock_saved)
			FUNC3(clock_saved);
	} while (FUNC1() < end);
}