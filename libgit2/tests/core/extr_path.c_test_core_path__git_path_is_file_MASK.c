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
 int /*<<< orphan*/  GIT_PATH_FS_HFS ; 
 int GIT_PATH_GITFILE_GITATTRIBUTES ; 
 int GIT_PATH_GITFILE_GITIGNORE ; 
 int GIT_PATH_GITFILE_GITMODULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	FUNC0(FUNC2("blob", 4, -1, GIT_PATH_FS_HFS));
	FUNC1(FUNC2("blob", 4, GIT_PATH_GITFILE_GITIGNORE, GIT_PATH_FS_HFS));
	FUNC1(FUNC2("blob", 4, GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_HFS));
	FUNC1(FUNC2("blob", 4, GIT_PATH_GITFILE_GITATTRIBUTES, GIT_PATH_FS_HFS));
	FUNC0(FUNC2("blob", 4, 3, GIT_PATH_FS_HFS));
}