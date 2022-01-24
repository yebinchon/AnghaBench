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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  const GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  const GIT_OBJECT_TAG ; 
 int /*<<< orphan*/  const GIT_OBJECT_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(const uint8_t *data, size_t size)
{
	const git_object_t types[] = {
		GIT_OBJECT_BLOB, GIT_OBJECT_TREE, GIT_OBJECT_COMMIT, GIT_OBJECT_TAG
	};
	git_object *object = NULL;
	size_t i;

	/*
	 * Brute-force parse this as every object type. We want
	 * to stress the parsing logic anyway, so this is fine
	 * to do.
	 */
	for (i = 0; i < FUNC0(types); i++) {
		if (FUNC1(&object, (const char *) data, size, types[i]) < 0)
			continue;
		FUNC2(object);
		object = NULL;
	}

	return 0;
}