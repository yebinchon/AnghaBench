#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dirent {int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {scalar_t__ buf; } ;
struct TYPE_5__ {TYPE_3__ path; int /*<<< orphan*/  st; scalar_t__ basename; scalar_t__ relative_path; } ;
struct dir_iterator_int {int levels_nr; int flags; TYPE_2__ base; TYPE_1__* levels; } ;
struct TYPE_4__ {scalar_t__ prefix_len; } ;

/* Variables and functions */
 int DIR_ITERATOR_FOLLOW_SYMLINKS ; 
 int ENOENT ; 
 int errno ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct dir_iterator_int *iter,
				   struct dirent *de)
{
	int err, saved_errno;

	FUNC2(&iter->base.path, de->d_name);
	/*
	 * We have to reset these because the path strbuf might have
	 * been realloc()ed at the previous strbuf_addstr().
	 */
	iter->base.relative_path = iter->base.path.buf +
				   iter->levels[0].prefix_len;
	iter->base.basename = iter->base.path.buf +
			      iter->levels[iter->levels_nr - 1].prefix_len;

	if (iter->flags & DIR_ITERATOR_FOLLOW_SYMLINKS)
		err = FUNC1(iter->base.path.buf, &iter->base.st);
	else
		err = FUNC0(iter->base.path.buf, &iter->base.st);

	saved_errno = errno;
	if (err && errno != ENOENT)
		FUNC3("failed to stat '%s'", iter->base.path.buf);

	errno = saved_errno;
	return err;
}