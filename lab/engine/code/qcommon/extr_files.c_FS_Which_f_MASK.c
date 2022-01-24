#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ searchpath_t ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,TYPE_1__*) ; 
 TYPE_1__* fs_searchpaths ; 

void FUNC3( void ) {
	searchpath_t	*search;
	char		*filename;

	filename = FUNC0(1);

	if ( !filename[0] ) {
		FUNC1( "Usage: which <file>\n" );
		return;
	}

	// qpaths are not supposed to have a leading slash
	if ( filename[0] == '/' || filename[0] == '\\' ) {
		filename++;
	}

	// just wants to see if file is there
	for(search = fs_searchpaths; search; search = search->next)
	{
		if(FUNC2(filename, search))
			return;
	}

	FUNC1("File not found: \"%s\"\n", filename);
}