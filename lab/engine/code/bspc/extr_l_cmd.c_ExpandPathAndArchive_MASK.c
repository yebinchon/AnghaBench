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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ archive ; 
 char* archivedir ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 

char *FUNC3 (char *path)
{
	char	*expanded;
	char	archivename[1024];

	expanded = FUNC0 (path);

	if (archive)
	{
		FUNC2 (archivename, "%s/%s", archivedir, path);
		FUNC1 (expanded, archivename);
	}
	return expanded;
}