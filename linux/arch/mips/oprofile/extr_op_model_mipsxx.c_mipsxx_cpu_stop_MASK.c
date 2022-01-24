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
struct TYPE_2__ {unsigned int num_counters; } ;

/* Variables and functions */
 TYPE_1__ op_model_mipsxx_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *args)
{
	unsigned int counters = op_model_mipsxx_ops.num_counters;

	if (FUNC0(FUNC1()))
		return;

	switch (counters) {
	case 4:
		FUNC5(0);
		/* fall through */
	case 3:
		FUNC4(0);
		/* fall through */
	case 2:
		FUNC3(0);
		/* fall through */
	case 1:
		FUNC2(0);
	}
}