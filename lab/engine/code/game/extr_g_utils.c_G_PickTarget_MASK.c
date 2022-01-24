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
typedef  int /*<<< orphan*/  gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int MAXCHOICES ; 
 int FUNC3 () ; 

gentity_t *FUNC4 (char *targetname)
{
	gentity_t	*ent = NULL;
	int		num_choices = 0;
	gentity_t	*choice[MAXCHOICES];

	if (!targetname)
	{
		FUNC2("G_PickTarget called with NULL targetname\n");
		return NULL;
	}

	while(1)
	{
		ent = FUNC1 (ent, FUNC0(targetname), targetname);
		if (!ent)
			break;
		choice[num_choices++] = ent;
		if (num_choices == MAXCHOICES)
			break;
	}

	if (!num_choices)
	{
		FUNC2("G_PickTarget: target %s not found\n", targetname);
		return NULL;
	}

	return choice[FUNC3() % num_choices];
}