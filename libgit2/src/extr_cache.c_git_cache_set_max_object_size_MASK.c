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
typedef  size_t git_object_t ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 size_t* git_cache__max_object_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(git_object_t type, size_t size)
{
	if (type < 0 || (size_t)type >= FUNC0(git_cache__max_object_size)) {
		FUNC1(GIT_ERROR_INVALID, "type out of range");
		return -1;
	}

	git_cache__max_object_size[type] = size;
	return 0;
}