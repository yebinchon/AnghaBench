#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dir_iterator_level {int prefix_len; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * buf; } ;
struct TYPE_3__ {TYPE_2__ path; } ;
struct dir_iterator_int {scalar_t__ levels_nr; TYPE_1__ base; struct dir_iterator_level* levels; int /*<<< orphan*/  levels_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dir_iterator_level*,scalar_t__,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dir_iterator_int *iter)
{
	struct dir_iterator_level *level;

	FUNC0(iter->levels, iter->levels_nr + 1, iter->levels_alloc);
	level = &iter->levels[iter->levels_nr++];

	if (!FUNC1(iter->base.path.buf[iter->base.path.len - 1]))
		FUNC3(&iter->base.path, '/');
	level->prefix_len = iter->base.path.len;

	level->dir = FUNC2(iter->base.path.buf);
	if (!level->dir) {
		int saved_errno = errno;
		if (errno != ENOENT) {
			FUNC4("error opening directory '%s'",
				      iter->base.path.buf);
		}
		iter->levels_nr--;
		errno = saved_errno;
		return -1;
	}

	return 0;
}