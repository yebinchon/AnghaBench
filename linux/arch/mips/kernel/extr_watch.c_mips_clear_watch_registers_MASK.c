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
struct TYPE_2__ {int watch_reg_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	switch (current_cpu_data.watch_reg_count) {
	default:
		FUNC0();
	case 8:
		FUNC8(0);
		/* fall through */
	case 7:
		FUNC7(0);
		/* fall through */
	case 6:
		FUNC6(0);
		/* fall through */
	case 5:
		FUNC5(0);
		/* fall through */
	case 4:
		FUNC4(0);
		/* fall through */
	case 3:
		FUNC3(0);
		/* fall through */
	case 2:
		FUNC2(0);
		/* fall through */
	case 1:
		FUNC1(0);
	}
}