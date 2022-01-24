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
 scalar_t__ GIT_OBJECT_BLOB ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 scalar_t__ GIT_OBJECT_INVALID ; 
 scalar_t__ GIT_OBJECT_OFS_DELTA ; 
 scalar_t__ GIT_OBJECT_REF_DELTA ; 
 scalar_t__ GIT_OBJECT_TAG ; 
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 

void FUNC2(void)
{
	FUNC0(FUNC1(NULL) == GIT_OBJECT_INVALID);
	FUNC0(FUNC1("") == GIT_OBJECT_INVALID);
	FUNC0(FUNC1("commit") == GIT_OBJECT_COMMIT);
	FUNC0(FUNC1("tree") == GIT_OBJECT_TREE);
	FUNC0(FUNC1("blob") == GIT_OBJECT_BLOB);
	FUNC0(FUNC1("tag") == GIT_OBJECT_TAG);
	FUNC0(FUNC1("OFS_DELTA") == GIT_OBJECT_OFS_DELTA);
	FUNC0(FUNC1("REF_DELTA") == GIT_OBJECT_REF_DELTA);

	FUNC0(FUNC1("CoMmIt") == GIT_OBJECT_INVALID);
	FUNC0(FUNC1("hohoho") == GIT_OBJECT_INVALID);
}