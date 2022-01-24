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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  reboot_mode_nds32 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(char *cmd)
{
	/*
	 * Clean and disable cache, and turn off interrupts
	 */
	FUNC1();

	/*
	 * Tell the mm system that we are going to reboot -
	 * we may need it to insert some 1:1 mappings so that
	 * soft boot works.
	 */
	FUNC5(reboot_mode_nds32);

	/* Execute kernel restart handler call chain */
	FUNC2(cmd);

	/*
	 * Now call the architecture specific reboot code.
	 */
	FUNC0(reboot_mode_nds32);

	/*
	 * Whoops - the architecture was unable to reboot.
	 * Tell the user!
	 */
	FUNC3(1000);
	FUNC4("Reboot failed -- System halted\n");
	while (1) ;
}