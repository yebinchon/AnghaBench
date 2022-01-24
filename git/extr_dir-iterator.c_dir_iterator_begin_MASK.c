#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct dir_iterator {TYPE_3__ st; TYPE_1__ path; } ;
struct dir_iterator_int {unsigned int flags; struct dir_iterator base; scalar_t__ levels_nr; int /*<<< orphan*/  levels_alloc; int /*<<< orphan*/  levels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_iterator*) ; 
 int errno ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct dir_iterator_int* FUNC6 (int,int) ; 

struct dir_iterator *FUNC7(const char *path, unsigned int flags)
{
	struct dir_iterator_int *iter = FUNC6(1, sizeof(*iter));
	struct dir_iterator *dir_iterator = &iter->base;
	int saved_errno;

	FUNC5(&iter->base.path, PATH_MAX);
	FUNC4(&iter->base.path, path);

	FUNC0(iter->levels, 10, iter->levels_alloc);
	iter->levels_nr = 0;
	iter->flags = flags;

	/*
	 * Note: stat already checks for NULL or empty strings and
	 * inexistent paths.
	 */
	if (FUNC3(iter->base.path.buf, &iter->base.st) < 0) {
		saved_errno = errno;
		goto error_out;
	}

	if (!FUNC1(iter->base.st.st_mode)) {
		saved_errno = ENOTDIR;
		goto error_out;
	}

	return dir_iterator;

error_out:
	FUNC2(dir_iterator);
	errno = saved_errno;
	return NULL;
}