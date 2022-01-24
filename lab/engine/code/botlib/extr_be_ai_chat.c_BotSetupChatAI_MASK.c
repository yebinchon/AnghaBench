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
struct TYPE_2__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;

/* Variables and functions */
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int FUNC7 () ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  matchtemplates ; 
 int /*<<< orphan*/  randomstrings ; 
 int /*<<< orphan*/  replychats ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  synonyms ; 

int FUNC9(void)
{
	char *file;

#ifdef DEBUG
	int starttime = Sys_MilliSeconds();
#endif //DEBUG

	file = FUNC5("synfile", "syn.c");
	synonyms = FUNC3(file);
	file = FUNC5("rndfile", "rnd.c");
	randomstrings = FUNC1(file);
	file = FUNC5("matchfile", "match.c");
	matchtemplates = FUNC0(file);
	//
	if (!FUNC6("nochat", "0"))
	{
		file = FUNC5("rchatfile", "rchat.c");
		replychats = FUNC2(file);
	} //end if

	FUNC4();

#ifdef DEBUG
	botimport.Print(PRT_MESSAGE, "setup chat AI %d msec\n", Sys_MilliSeconds() - starttime);
#endif //DEBUG
	return BLERR_NOERROR;
}