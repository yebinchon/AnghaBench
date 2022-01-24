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
struct cpuinfo_x86 {int dummy; } ;
struct TYPE_2__ {int disabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cpuinfo_x86*) ; 
 scalar_t__ FUNC1 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  do_machine_check ; 
 int /*<<< orphan*/  machine_check_vector ; 
 TYPE_1__ mca_cfg ; 
 int /*<<< orphan*/  FUNC9 (struct cpuinfo_x86*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void FUNC12(struct cpuinfo_x86 *c)
{
	if (mca_cfg.disabled)
		return;

	if (FUNC0(c))
		return;

	if (!FUNC9(c))
		return;

	FUNC2();

	if (FUNC1(c) < 0) {
		mca_cfg.disabled = 1;
		return;
	}

	if (FUNC10()) {
		mca_cfg.disabled = 1;
		FUNC11("Couldn't allocate MCE records pool!\n");
		return;
	}

	machine_check_vector = do_machine_check;

	FUNC5(c);
	FUNC6();
	FUNC7(c);
	FUNC4();
	FUNC3();
	FUNC8();
}