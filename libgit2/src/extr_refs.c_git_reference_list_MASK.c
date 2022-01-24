#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_3__ {char** strings; scalar_t__ count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cb__reflist_add ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

int FUNC5(
	git_strarray *array,
	git_repository *repo)
{
	git_vector ref_list;

	FUNC0(array && repo);

	array->strings = NULL;
	array->count = 0;

	if (FUNC4(&ref_list, 8, NULL) < 0)
		return -1;

	if (FUNC1(
			repo, &cb__reflist_add, (void *)&ref_list) < 0) {
		FUNC3(&ref_list);
		return -1;
	}

	array->strings = (char **)FUNC2(&array->count, NULL, &ref_list);

	return 0;
}