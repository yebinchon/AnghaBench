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
struct TYPE_2__ {scalar_t__* binding; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (char*) ; 
 TYPE_1__* keys ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7 (void)
{
	int			i, c, b;
	char		cmd[1024];
	
	c = FUNC0();

	if (c < 2)
	{
		FUNC2 ("bind <key> [command] : attach a command to a key\n");
		return;
	}
	b = FUNC5 (FUNC1(1));
	if (b==-1)
	{
		FUNC2 ("\"%s\" isn't a valid key\n", FUNC1(1));
		return;
	}

	if (c == 2)
	{
		if (keys[b].binding && keys[b].binding[0])
			FUNC2 ("\"%s\" = \"%s\"\n", FUNC3(b), keys[b].binding );
		else
			FUNC2 ("\"%s\" is not bound\n", FUNC3(b) );
		return;
	}
	
// copy the rest of the command line
	cmd[0] = 0;		// start out with a null string
	for (i=2 ; i< c ; i++)
	{
		FUNC6 (cmd, FUNC1(i));
		if (i != (c-1))
			FUNC6 (cmd, " ");
	}

	FUNC4 (b, cmd);
}