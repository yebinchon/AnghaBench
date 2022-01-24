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
struct TYPE_2__ {int step; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  split_state ; 
 int threads_per_core ; 

__attribute__((used)) static void FUNC4(int step)
{
	int i, cpu = FUNC3();

	for (i = cpu + 1; i < cpu + threads_per_core; i++)
		while(FUNC2(split_state, i).step < step)
			FUNC0();

	/* Order the wait loop vs any subsequent loads/stores. */
	FUNC1();
}