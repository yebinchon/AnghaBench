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
typedef  int /*<<< orphan*/  skinname ;
typedef  int /*<<< orphan*/  scratch ;
struct TYPE_2__ {int q3HeadCount; char** q3HeadNames; int /*<<< orphan*/ * q3HeadIcons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,...) ; 
 int MAX_PLAYERMODELS ; 
 int MAX_QPATH ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ uiInfo ; 
 char* FUNC8 (char*,char*,...) ; 

__attribute__((used)) static void FUNC9( void )
{
	int		numdirs;
	int		numfiles;
	char	dirlist[2048];
	char	filelist[2048];
	char	skinname[MAX_QPATH];
	char	scratch[256];
	char*	dirptr;
	char*	fileptr;
	int		i;
	int		j, k, dirty;
	int		dirlen;
	int		filelen;

	uiInfo.q3HeadCount = 0;

	// iterate directory of all player models
	numdirs = FUNC6("models/players", "/", dirlist, 2048 );
	dirptr  = dirlist;
	for (i=0; i<numdirs && uiInfo.q3HeadCount < MAX_PLAYERMODELS; i++,dirptr+=dirlen+1)
	{
		dirlen = FUNC5(dirptr);
		
		if (dirlen && dirptr[dirlen-1]=='/') dirptr[dirlen-1]='\0';

		if (!FUNC4(dirptr,".") || !FUNC4(dirptr,".."))
			continue;
			
		// iterate all skin files in directory
		numfiles = FUNC6( FUNC8("models/players/%s",dirptr), "tga", filelist, 2048 );
		fileptr  = filelist;
		for (j=0; j<numfiles && uiInfo.q3HeadCount < MAX_PLAYERMODELS;j++,fileptr+=filelen+1)
		{
			filelen = FUNC5(fileptr);

			FUNC0(fileptr, skinname, sizeof(skinname));

			// look for icon_????
			if (FUNC3(skinname, "icon_", 5) == 0 && !(FUNC2(skinname,"icon_blue") == 0 || FUNC2(skinname,"icon_red") == 0))
			{
				if (FUNC2(skinname, "icon_default") == 0) {
					FUNC1( scratch, sizeof(scratch), "%s", dirptr);
				} else {
					FUNC1( scratch, sizeof(scratch), "%s/%s",dirptr, skinname + 5);
				}
				dirty = 0;
				for(k=0;k<uiInfo.q3HeadCount;k++) {
					if (!FUNC2(scratch, uiInfo.q3HeadNames[uiInfo.q3HeadCount])) {
						dirty = 1;
						break;
					}
				}
				if (!dirty) {
					FUNC1( uiInfo.q3HeadNames[uiInfo.q3HeadCount], sizeof(uiInfo.q3HeadNames[uiInfo.q3HeadCount]), "%s", scratch);
					uiInfo.q3HeadIcons[uiInfo.q3HeadCount++] = FUNC7(FUNC8("models/players/%s/%s",dirptr,skinname));
				}
			}

		}
	}	

}