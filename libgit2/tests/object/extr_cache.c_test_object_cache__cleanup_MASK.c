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
 scalar_t__ GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  GIT_OPT_SET_CACHE_OBJECT_LIMIT ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
	FUNC1(g_repo);
	g_repo = NULL;

	FUNC0(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_BLOB, (size_t)0);
	FUNC0(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_TREE, (size_t)4096);
	FUNC0(GIT_OPT_SET_CACHE_OBJECT_LIMIT, (int)GIT_OBJECT_COMMIT, (size_t)4096);
}