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
 int GIT_PATH_REJECT_DOT_GIT_HFS ; 
 int GIT_PATH_REJECT_DOT_GIT_NTFS ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	FUNC0(true, FUNC1(NULL, ".gitmodules", 0, GIT_PATH_REJECT_DOT_GIT_HFS|GIT_PATH_REJECT_DOT_GIT_NTFS));
	FUNC0(false, FUNC1(NULL, ".gitmodules", S_IFLNK, GIT_PATH_REJECT_DOT_GIT_HFS));
	FUNC0(false, FUNC1(NULL, ".gitmodules", S_IFLNK, GIT_PATH_REJECT_DOT_GIT_NTFS));
}