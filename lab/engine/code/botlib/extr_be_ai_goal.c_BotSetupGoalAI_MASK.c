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
struct TYPE_2__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int BLERR_CANNOTLOADITEMCONFIG ; 
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  droppedweight ; 
 int /*<<< orphan*/  g_gametype ; 
 int /*<<< orphan*/  itemconfig ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(void)
{
	char *filename;

	//check if teamplay is on
	g_gametype = FUNC2("g_gametype", "0");
	//item configuration file
	filename = FUNC1("itemconfig", "items.c");
	//load the item configuration
	itemconfig = FUNC3(filename);
	if (!itemconfig)
	{
		botimport.Print(PRT_FATAL, "couldn't load item config\n");
		return BLERR_CANNOTLOADITEMCONFIG;
	} //end if
	//
	droppedweight = FUNC0("droppedweight", "1000");
	//everything went ok
	return BLERR_NOERROR;
}