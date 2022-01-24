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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	const char *home = FUNC2("HOME");
	if (!home)
		FUNC1("could not determine user's home directory; HOME is unset");
	if (FUNC0(home) == -1)
		FUNC1("could not chdir to user's home directory");
}