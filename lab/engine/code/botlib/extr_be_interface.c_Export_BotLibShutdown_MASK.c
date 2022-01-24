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
struct TYPE_2__ {void* botlibsetup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int BLERR_LIBRARYNOTSETUP ; 
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_1__ botlibglobals ; 
 void* botlibsetup ; 
 void* qfalse ; 

int FUNC14(void)
{
	if (!FUNC1("BotLibShutdown")) return BLERR_LIBRARYNOTSETUP;
#ifndef DEMO
	//DumpFileCRCs();
#endif //DEMO
	//
	FUNC3();		//be_ai_chat.c
	FUNC5();		//be_ai_move.c
	FUNC4();		//be_ai_goal.c
	FUNC6();		//be_ai_weap.c
	FUNC7();		//be_ai_weight.c
	FUNC2();	//be_ai_char.c
	//shud down aas
	FUNC0();
	//shut down bot elemantary actions
	FUNC8();
	//free all libvars
	FUNC9();
	//remove all global defines from the pre compiler
	FUNC12();

	//dump all allocated memory
//	DumpMemory();
#ifdef DEBUG
	PrintMemoryLabels();
#endif
	//shut down library log file
	FUNC10();
	//
	botlibsetup = qfalse;
	botlibglobals.botlibsetup = qfalse;
	// print any files still open
	FUNC11();
	//
	return BLERR_NOERROR;
}