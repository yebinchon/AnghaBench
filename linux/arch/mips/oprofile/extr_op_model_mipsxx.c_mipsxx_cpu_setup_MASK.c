#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int num_counters; } ;
struct TYPE_3__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 TYPE_2__ op_model_mipsxx_ops ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *args)
{
	unsigned int counters = op_model_mipsxx_ops.num_counters;

	if (FUNC0(FUNC1()))
		return;

	switch (counters) {
	case 4:
		FUNC9(0);
		FUNC5(reg.counter[3]);
		/* fall through */
	case 3:
		FUNC8(0);
		FUNC4(reg.counter[2]);
		/* fall through */
	case 2:
		FUNC7(0);
		FUNC3(reg.counter[1]);
		/* fall through */
	case 1:
		FUNC6(0);
		FUNC2(reg.counter[0]);
	}
}