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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 () ; 

int FUNC15(void)
{
	/* First, copy the boot header into the "zeropage" */
	FUNC2();

	/* Initialize the early-boot console */
	FUNC1();
	if (FUNC0("debug"))
		FUNC8("early console in setup code\n");

	/* End of heap check */
	FUNC6();

	/* Make sure we have all the proper CPU support */
	if (FUNC14()) {
		FUNC8("Unable to boot - please use a kernel appropriate "
		     "for your CPU.\n");
		FUNC4();
	}

	/* Tell the BIOS what CPU mode we intend to run in. */
	FUNC12();

	/* Detect memory layout */
	FUNC3();

	/* Set keyboard repeat rate (why?) and query the lock flags */
	FUNC7();

	/* Query Intel SpeedStep (IST) information */
	FUNC11();

	/* Query APM information */
#if defined(CONFIG_APM) || defined(CONFIG_APM_MODULE)
	query_apm_bios();
#endif

	/* Query EDD information */
#if defined(CONFIG_EDD) || defined(CONFIG_EDD_MODULE)
	query_edd();
#endif

	/* Set the video mode */
	FUNC13();

	/* Do the last things and invoke protected mode */
	FUNC5();
}