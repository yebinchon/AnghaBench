#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_pool ;
struct TYPE_5__ {char* fullpath; char* path; } ;
typedef  TYPE_1__ git_attr_file_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(
	git_attr_file_entry **out,
	const char *base,
	const char *path,
	git_pool *pool)
{
	size_t baselen = 0, pathlen = FUNC4(path);
	size_t cachesize = sizeof(git_attr_file_entry) + pathlen + 1;
	git_attr_file_entry *ce;

	if (base != NULL && FUNC1(path) < 0) {
		baselen = FUNC4(base);
		cachesize += baselen;

		if (baselen && base[baselen - 1] != '/')
			cachesize++;
	}

	ce = FUNC2(pool, cachesize);
	FUNC0(ce);

	if (baselen) {
		FUNC3(ce->fullpath, base, baselen);

		if (base[baselen - 1] != '/')
			ce->fullpath[baselen++] = '/';
	}
	FUNC3(&ce->fullpath[baselen], path, pathlen);

	ce->path = &ce->fullpath[baselen];
	*out = ce;

	return 0;
}