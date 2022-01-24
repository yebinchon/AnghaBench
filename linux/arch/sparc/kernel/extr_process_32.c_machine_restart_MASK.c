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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* reboot_command ; 
 char* FUNC6 (char*,char) ; 

void FUNC7(char * cmd)
{
	char *p;
	
	FUNC1();
	FUNC2(8);
	FUNC0();

	p = FUNC6 (reboot_command, '\n');
	if (p) *p = 0;
	if (cmd)
		FUNC5(cmd);
	if (*reboot_command)
		FUNC5(reboot_command);
	FUNC4 ("reset");
	FUNC3("Reboot failed!");
}