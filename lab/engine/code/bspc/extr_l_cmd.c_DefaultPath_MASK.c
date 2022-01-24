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
 char PATHSEPERATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2 (char *path, char *basepath)
{
	char    temp[128];

	if (path[0] == PATHSEPERATOR)
		return;                   // absolute path location
	FUNC1 (temp,path);
	FUNC1 (path,basepath);
	FUNC0 (path,temp);
}