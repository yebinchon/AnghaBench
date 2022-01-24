#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  libPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int FUNC1 (char*,int,char*,char const*,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  PATH_SEP ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 void* FUNC6 (char const*) ; 

void *FUNC7(const char *name, qboolean useSystemLib)
{
	void *dllhandle = NULL;

	if(!FUNC5(name))
	{
		FUNC0("Refusing to attempt to load library \"%s\": Extension not allowed.\n", name);
		return NULL;
	}

	if(useSystemLib)
	{
		FUNC0("Trying to load \"%s\"...\n", name);
		dllhandle = FUNC6(name);
	}

	if(!dllhandle)
	{
		const char *topDir;
		char libPath[MAX_OSPATH];
		int len;

		topDir = FUNC4();

		if(!*topDir)
			topDir = ".";

		len = FUNC1(libPath, sizeof(libPath), "%s%c%s", topDir, PATH_SEP, name);
		if(len < sizeof(libPath))
		{
			FUNC0("Trying to load \"%s\" from \"%s\"...\n", name, topDir);
			dllhandle = FUNC6(libPath);
		}
		else
		{
			FUNC0("Skipping trying to load \"%s\" from \"%s\", file name is too long.\n", name, topDir);
		}

		if(!dllhandle)
		{
			const char *basePath = FUNC2("fs_basepath");

			if(!basePath || !*basePath)
				basePath = ".";

			if(FUNC3(topDir, basePath))
			{
				len = FUNC1(libPath, sizeof(libPath), "%s%c%s", basePath, PATH_SEP, name);
				if(len < sizeof(libPath))
				{
					FUNC0("Trying to load \"%s\" from \"%s\"...\n", name, basePath);
					dllhandle = FUNC6(libPath);
				}
				else
				{
					FUNC0("Skipping trying to load \"%s\" from \"%s\", file name is too long.\n", name, basePath);
				}
			}

			if(!dllhandle)
				FUNC0("Loading \"%s\" failed\n", name);
		}
	}

	return dllhandle;
}