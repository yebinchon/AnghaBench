#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct _stat {int dummy; } ;
struct TYPE_9__ {char* pakfile; char* origname; struct TYPE_9__* next; } ;
typedef  TYPE_1__ quakefile_t ;
struct TYPE_10__ {int gl_pathc; char** gl_pathv; } ;
typedef  TYPE_2__ glob_t ;
typedef  int /*<<< orphan*/  foldername ;
typedef  int /*<<< orphan*/  filter ;
struct TYPE_11__ {char* cFileName; } ;
typedef  TYPE_3__ WIN32_FIND_DATA ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_3__*) ; 
 TYPE_1__* FUNC3 (char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int MAX_PATH ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 size_t FUNC14 (char*) ; 

void FUNC15(char *quakepath)
{
#if defined(WIN32)|defined(_WIN32)
	WIN32_FIND_DATA filedata;
	HWND handle;
	struct _stat statbuf;
	int done;
#else
	glob_t globbuf;
	struct stat statbuf;
	int j;
#endif
	char filter[MAX_PATH], bspfilter[MAX_PATH], aasfilter[MAX_PATH];
	char aasfile[MAX_PATH], buf[MAX_PATH], foldername[MAX_PATH];
	quakefile_t *qf, *qf2, *files, *bspfiles, *aasfiles;

	FUNC12(filter, quakepath);
	FUNC0(filter, sizeof(filter));
	FUNC11(filter, "*");

#if defined(WIN32)|defined(_WIN32)
	handle = FindFirstFile(filter, &filedata);
	done = (handle == INVALID_HANDLE_VALUE);
	while(!done)
	{
		_splitpath(filter, foldername, NULL, NULL, NULL);
		_splitpath(filter, NULL, &foldername[strlen(foldername)], NULL, NULL);
		AppendPathSeperator(foldername, MAX_PATH);
		strcat(foldername, filedata.cFileName);
		_stat(foldername, &statbuf);
#else
	FUNC7(filter, 0, NULL, &globbuf);
	for (j = 0; j < globbuf.gl_pathc; j++)
	{
		FUNC12(foldername, globbuf.gl_pathv[j]);
		FUNC10(foldername, &statbuf);
#endif
		//if it is a folder
		if (statbuf.st_mode & S_IFDIR)
		{
			//
			FUNC0(foldername, sizeof(foldername));
			//get all the bsp files
			FUNC12(bspfilter, foldername);
			FUNC11(bspfilter, "maps/*.bsp");
			files = FUNC3(bspfilter);
			FUNC12(bspfilter, foldername);
			FUNC11(bspfilter, "*.pk3/maps/*.bsp");
			bspfiles = FUNC3(bspfilter);
			for (qf = bspfiles; qf; qf = qf->next) if (!qf->next) break;
			if (qf) qf->next = files;
			else bspfiles = files;
			//get all the aas files
			FUNC12(aasfilter, foldername);
			FUNC11(aasfilter, "maps/*.aas");
			files = FUNC3(aasfilter);
			FUNC12(aasfilter, foldername);
			FUNC11(aasfilter, "*.pk3/maps/*.aas");
			aasfiles = FUNC3(aasfilter);
			for (qf = aasfiles; qf; qf = qf->next) if (!qf->next) break;
			if (qf) qf->next = files;
			else aasfiles = files;
			//
			for (qf = bspfiles; qf; qf = qf->next)
			{
				FUNC9(aasfile, "%s/%s", qf->pakfile, qf->origname);
				FUNC4("found %s\n", aasfile);
				FUNC12(&aasfile[FUNC14(aasfile)-FUNC14(".bsp")], ".aas");
				for (qf2 = aasfiles; qf2; qf2 = qf2->next)
				{
					FUNC9(buf, "%s/%s", qf2->pakfile, qf2->origname);
					if (!FUNC13(aasfile, buf))
					{
						FUNC4("found %s\n", buf);
						break;
					} //end if
				} //end for
			} //end for
		} //end if
#if defined(WIN32)|defined(_WIN32)
		//find the next file
		done = !FindNextFile(handle, &filedata);
	} //end while
#else
	} //end for
	FUNC8(&globbuf);
#endif
}