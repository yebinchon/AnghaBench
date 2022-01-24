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
typedef  int /*<<< orphan*/  dirlist ;
struct TYPE_3__ {char const** itemnames; int numitems; } ;
struct TYPE_4__ {char** descriptionList; char** fs_gameList; TYPE_1__ list; int /*<<< orphan*/  fs_game; int /*<<< orphan*/  fs_gamePtr; int /*<<< orphan*/  description; int /*<<< orphan*/  descriptionPtr; } ;

/* Variables and functions */
 int MAX_MODS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_2__ s_mods ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void FUNC5( void ) {
	int		numdirs;
	char	dirlist[2048];
	char	*dirptr;
  char  *descptr;
	int		i;
	int		dirlen;

	s_mods.list.itemnames = (const char **)s_mods.descriptionList;
	s_mods.descriptionPtr = s_mods.description;
	s_mods.fs_gamePtr = s_mods.fs_game;

	// always start off with baseq3
	s_mods.list.numitems = 1;
	s_mods.list.itemnames[0] = s_mods.descriptionList[0] = "Quake III Arena";
	s_mods.fs_gameList[0] = "";

	numdirs = FUNC2( "$modlist", "", dirlist, sizeof(dirlist) );
	dirptr  = dirlist;
	for( i = 0; i < numdirs; i++ ) {
		dirlen = FUNC1( dirptr ) + 1;
    descptr = dirptr + dirlen;
  	FUNC0( dirptr, descptr);
    dirptr += dirlen + FUNC1(descptr) + 1;
	}

	FUNC3( FUNC4( "%i mods parsed\n", s_mods.list.numitems ) );
	if (s_mods.list.numitems > MAX_MODS) {
		s_mods.list.numitems = MAX_MODS;
	}
}