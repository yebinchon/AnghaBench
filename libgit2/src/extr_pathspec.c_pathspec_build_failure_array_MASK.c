#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t length; } ;
typedef  TYPE_1__ git_vector ;
typedef  int /*<<< orphan*/  git_pool ;
typedef  int /*<<< orphan*/  git_pathspec_string_array_t ;
typedef  int /*<<< orphan*/  git_bitvec ;
struct TYPE_7__ {int /*<<< orphan*/  pattern; } ;
typedef  TYPE_2__ git_attr_fnmatch ;

/* Variables and functions */
 char** FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int FUNC4(
	git_pathspec_string_array_t *failures,
	git_vector *patterns,
	git_bitvec *used,
	git_pool *pool)
{
	size_t pos;
	char **failed;
	const git_attr_fnmatch *pat;

	for (pos = 0; pos < patterns->length; ++pos) {
		if (FUNC1(used, pos))
			continue;

		if ((failed = FUNC0(*failures)) == NULL)
			return -1;

		pat = FUNC3(patterns, pos);

		if ((*failed = FUNC2(pool, pat->pattern)) == NULL)
			return -1;
	}

	return 0;
}