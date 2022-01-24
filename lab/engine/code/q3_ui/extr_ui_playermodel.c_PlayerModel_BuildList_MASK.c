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
typedef  scalar_t__ qboolean ;
struct TYPE_2__ {int nummodels; int numpages; int /*<<< orphan*/ * modelnames; scalar_t__ modelpage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int MAX_MODELSPERPAGE ; 
 int MAX_PLAYERMODELS ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__ s_playermodel ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9( void )
{
	int		numdirs;
	int		numfiles;
	char	dirlist[2048];
	char	filelist[2048];
	char	skinname[MAX_QPATH];
	char*	dirptr;
	char*	fileptr;
	int		i;
	int		j;
	int		dirlen;
	int		filelen;
	qboolean precache;

	precache = FUNC5("com_buildscript");

	s_playermodel.modelpage = 0;
	s_playermodel.nummodels = 0;

	// iterate directory of all player models
	numdirs = FUNC6("models/players", "/", dirlist, 2048 );
	dirptr  = dirlist;
	for (i=0; i<numdirs && s_playermodel.nummodels < MAX_PLAYERMODELS; i++,dirptr+=dirlen+1)
	{
		dirlen = FUNC4(dirptr);
		
		if (dirlen && dirptr[dirlen-1]=='/') dirptr[dirlen-1]='\0';

		if (!FUNC3(dirptr,".") || !FUNC3(dirptr,".."))
			continue;
			
		// iterate all skin files in directory
		numfiles = FUNC6( FUNC8("models/players/%s",dirptr), "tga", filelist, 2048 );
		fileptr  = filelist;
		for (j=0; j<numfiles && s_playermodel.nummodels < MAX_PLAYERMODELS;j++,fileptr+=filelen+1)
		{
			filelen = FUNC4(fileptr);

			FUNC0(fileptr,skinname, sizeof(skinname));

			// look for icon_????
			if (!FUNC2(skinname,"icon_",5))
			{
				FUNC1( s_playermodel.modelnames[s_playermodel.nummodels++],
					sizeof( s_playermodel.modelnames[s_playermodel.nummodels] ),
					"models/players/%s/%s", dirptr, skinname );
				//if (s_playermodel.nummodels >= MAX_PLAYERMODELS)
				//	return;
			}

			if( precache ) {
				FUNC7( FUNC8( "sound/player/announce/%s_wins.wav", skinname), qfalse );
			}
		}
	}	

	//APSFIXME - Degenerate no models case

	s_playermodel.numpages = s_playermodel.nummodels/MAX_MODELSPERPAGE;
	if (s_playermodel.nummodels % MAX_MODELSPERPAGE)
		s_playermodel.numpages++;
}