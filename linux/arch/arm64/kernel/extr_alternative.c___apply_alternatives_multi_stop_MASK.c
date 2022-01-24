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
struct alt_region {struct alt_instr* end; struct alt_instr* begin; } ;
struct alt_instr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM64_NPATCHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ __alt_instructions ; 
 scalar_t__ __alt_instructions_end ; 
 int /*<<< orphan*/  FUNC4 (struct alt_region*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_alternatives_applied ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boot_capabilities ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  remaining_capabilities ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static int FUNC9(void *unused)
{
	struct alt_region region = {
		.begin	= (struct alt_instr *)__alt_instructions,
		.end	= (struct alt_instr *)__alt_instructions_end,
	};

	/* We always have a CPU 0 at this point (__init) */
	if (FUNC8()) {
		while (!FUNC2(all_alternatives_applied))
			FUNC6();
		FUNC7();
	} else {
		FUNC1(remaining_capabilities, ARM64_NPATCHABLE);

		FUNC5(remaining_capabilities, boot_capabilities,
				  ARM64_NPATCHABLE);

		FUNC0(all_alternatives_applied);
		FUNC4(&region, false, remaining_capabilities);
		/* Barriers provided by the cache flushing */
		FUNC3(all_alternatives_applied, 1);
	}

	return 0;
}