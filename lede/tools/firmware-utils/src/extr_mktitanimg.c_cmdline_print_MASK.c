#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ optc; } ;
struct TYPE_4__ {scalar_t__ parsed; TYPE_1__ glb_args; TYPE_1__* opt_args; } ;

/* Variables and functions */
 scalar_t__ CMDLINE_TRUE ; 
 TYPE_2__ cmdline_data ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char* argv[])
{
	int i;

	/* Check if the command line was parsed */
	if(cmdline_data.parsed != CMDLINE_TRUE)
	{
		FUNC1("The command line has not been parsed yet.\n");
		return;
	}

	/* Print out option arguments */
	for( i = 0; i < 26; i++ )
	{
		/* Check if the option was specified */
		if(cmdline_data.opt_args[i].optc !=0 )
		{
			/* Print out option name and arguments */
			FUNC1("Option: -%c\n", (char)('a'+i));
			FUNC0(&(cmdline_data.opt_args[i]), argv);
		}
	}

	/* Print out global arguments */
	FUNC1("Global arguments:\n");
	FUNC0(&(cmdline_data.glb_args), argv);
}