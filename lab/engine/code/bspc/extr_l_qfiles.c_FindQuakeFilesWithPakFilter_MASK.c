#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_mode; } ;
struct _stat {int dummy; } ;
struct TYPE_13__ {char* pakfile; char* filename; char* origname; struct TYPE_13__* next; int /*<<< orphan*/  type; scalar_t__ length; scalar_t__ offset; } ;
typedef  TYPE_1__ quakefile_t ;
struct TYPE_14__ {int gl_pathc; char** gl_pathv; } ;
typedef  TYPE_2__ glob_t ;
struct TYPE_15__ {char* cFileName; } ;
typedef  TYPE_3__ WIN32_FIND_DATA ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_3__*) ; 
 TYPE_1__* FUNC4 (char*,char*) ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int S_IFDIR ; 
 char* FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_1__* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 size_t FUNC17 (char*) ; 

quakefile_t *FUNC18(char *pakfilter, char *filter)
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
	quakefile_t *qfiles, *lastqf, *qf;
	char pakfile[MAX_PATH], filename[MAX_PATH], *str;

	qfiles = NULL;
	lastqf = NULL;
	if (pakfilter && FUNC17(pakfilter))
	{
#if defined(WIN32)|defined(_WIN32)
		handle = FindFirstFile(pakfilter, &filedata);
		done = (handle == INVALID_HANDLE_VALUE);
		while(!done)
		{
			_splitpath(pakfilter, pakfile, NULL, NULL, NULL);
			_splitpath(pakfilter, NULL, &pakfile[strlen(pakfile)], NULL, NULL);
			AppendPathSeperator(pakfile, MAX_PATH);
			strcat(pakfile, filedata.cFileName);
			_stat(pakfile, &statbuf);
#else
		FUNC10(pakfilter, 0, NULL, &globbuf);
		for (j = 0; j < globbuf.gl_pathc; j++)
		{
			FUNC16(pakfile, globbuf.gl_pathv[j]);
			FUNC14(pakfile, &statbuf);
#endif
			//if the file with .pak or .pk3 is a folder
			if (statbuf.st_mode & S_IFDIR)
			{
				FUNC16(filename, pakfilter);
				FUNC0(filename, MAX_PATH);
				FUNC15(filename, filter);
				qf = FUNC18(NULL, filename);
				if (lastqf) lastqf->next = qf;
				else qfiles = qf;
				lastqf = qf;
				while(lastqf->next) lastqf = lastqf->next;
			} //end if
			else
			{
#if defined(WIN32)|defined(_WIN32)
				str = StringContains(pakfile, ".pk3", false);
#else
				str = FUNC7(pakfile, ".pk3", true);
#endif
				if (str && str == pakfile + FUNC17(pakfile) - FUNC17(".pk3"))
				{
					qf = FUNC5(pakfile, filter);
				} //end if
				else
				{
					qf = FUNC4(pakfile, filter);
				} //end else
				//
				if (qf)
				{
					if (lastqf) lastqf->next = qf;
					else qfiles = qf;
					lastqf = qf;
					while(lastqf->next) lastqf = lastqf->next;
				} //end if
			} //end else
			//
#if defined(WIN32)|defined(_WIN32)
			//find the next file
			done = !FindNextFile(handle, &filedata);
		} //end while
#else
		} //end for
		FUNC11(&globbuf);
#endif
	} //end if
	else
	{
#if defined(WIN32)|defined(_WIN32)
		handle = FindFirstFile(filter, &filedata);
		done = (handle == INVALID_HANDLE_VALUE);
		while(!done)
		{
			_splitpath(filter, filename, NULL, NULL, NULL);
			_splitpath(filter, NULL, &filename[strlen(filename)], NULL, NULL);
			AppendPathSeperator(filename, MAX_PATH);
			strcat(filename, filedata.cFileName);
#else
		FUNC10(filter, 0, NULL, &globbuf);
		for (j = 0; j < globbuf.gl_pathc; j++)
		{
			FUNC16(filename, globbuf.gl_pathv[j]);
#endif
			//
			qf = FUNC12(sizeof(quakefile_t));
			if (!qf) FUNC1("out of memory");
			FUNC13(qf, 0, sizeof(quakefile_t));
			FUNC16(qf->pakfile, "");
			FUNC16(qf->filename, filename);
			FUNC16(qf->origname, filename);
			qf->offset = 0;
			qf->length = 0;
			qf->type = FUNC6(filename);
			//add the file ot the list
			qf->next = NULL;
			if (lastqf) lastqf->next = qf;
			else qfiles = qf;
			lastqf = qf;
#if defined(WIN32)|defined(_WIN32)
			//find the next file
			done = !FindNextFile(handle, &filedata);
		} //end while
#else
		} //end for
		FUNC11(&globbuf);
#endif
	} //end else
	return qfiles;
}