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
struct TYPE_4__ {size_t modCount; TYPE_1__* modList; } ;
struct TYPE_3__ {void* modDescr; void* modName; } ;

/* Variables and functions */
 size_t MAX_MODS ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*,char*,char*,int) ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static void FUNC3( void ) {
	int		numdirs;
	char	dirlist[2048];
	char	*dirptr;
  char  *descptr;
	int		i;
	int		dirlen;

	uiInfo.modCount = 0;
	numdirs = FUNC2( "$modlist", "", dirlist, sizeof(dirlist) );
	dirptr  = dirlist;
	for( i = 0; i < numdirs; i++ ) {
		dirlen = FUNC1( dirptr ) + 1;
    descptr = dirptr + dirlen;
		uiInfo.modList[uiInfo.modCount].modName = FUNC0(dirptr);
		uiInfo.modList[uiInfo.modCount].modDescr = FUNC0(descptr);
    dirptr += dirlen + FUNC1(descptr) + 1;
		uiInfo.modCount++;
		if (uiInfo.modCount >= MAX_MODS) {
			break;
		}
	}

}