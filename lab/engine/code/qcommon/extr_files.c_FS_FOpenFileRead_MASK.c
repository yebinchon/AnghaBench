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
struct TYPE_4__ {scalar_t__ pack; struct TYPE_4__* next; } ;
typedef  TYPE_1__ searchpath_t ;
typedef  int qboolean ;
typedef  scalar_t__ fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 long FUNC1 (char const*,TYPE_1__*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 char* Q3CONFIG_CFG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char const*) ; 
 TYPE_1__* fs_searchpaths ; 
 scalar_t__ missingFiles ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

long FUNC4(const char *filename, fileHandle_t *file, qboolean uniqueFILE)
{
	searchpath_t *search;
	long len;
	qboolean isLocalConfig;

	if(!fs_searchpaths)
		FUNC0(ERR_FATAL, "Filesystem call made without initialization");

	isLocalConfig = !FUNC3(filename, "autoexec.cfg") || !FUNC3(filename, Q3CONFIG_CFG);
	for(search = fs_searchpaths; search; search = search->next)
	{
		// autoexec.cfg and q3config.cfg can only be loaded outside of pk3 files.
		if (isLocalConfig && search->pack)
			continue;

		len = FUNC1(filename, search, file, uniqueFILE, qfalse);

		if(file == NULL)
		{
			if(len > 0)
				return len;
		}
		else
		{
			if(len >= 0 && *file)
				return len;
		}

	}
	
#ifdef FS_MISSING
	if(missingFiles)
		fprintf(missingFiles, "%s\n", filename);
#endif

	if(file)
	{
		*file = 0;
		return -1;
	}
	else
	{
		// When file is NULL, we're querying the existence of the file
		// If we've got here, it doesn't exist
		return 0;
	}
}