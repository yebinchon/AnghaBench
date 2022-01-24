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
typedef  int /*<<< orphan*/  aasfile ;
struct TYPE_4__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  mapname; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,char*) ;} ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__ aasworld ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC6(const char *mapname)
{
	int errnum;
	char aasfile[MAX_QPATH];

	FUNC4(aasworld.mapname, mapname, sizeof(aasworld.mapname));
	//NOTE: first reset the entity links into the AAS areas and BSP leaves
	// the AAS link heap and BSP link heap are reset after respectively the
	// AAS file and BSP file are loaded
	FUNC2();
	// load bsp info
	FUNC1();

	//load the aas file
	FUNC3(aasfile, sizeof(aasfile), "maps/%s.aas", mapname);
	errnum = FUNC0(aasfile);
	if (errnum != BLERR_NOERROR)
		return errnum;

	botimport.Print(PRT_MESSAGE, "loaded %s\n", aasfile);
	FUNC4(aasworld.filename, aasfile, sizeof(aasworld.filename));
	return BLERR_NOERROR;
}