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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 (void)
{
	int		b;

	if (FUNC0() != 2)
	{
		FUNC2 ("unbind <key> : remove commands from a key\n");
		return;
	}
	
	b = FUNC4 (FUNC1(1));
	if (b==-1)
	{
		FUNC2 ("\"%s\" isn't a valid key\n", FUNC1(1));
		return;
	}

	FUNC3 (b, "");
}