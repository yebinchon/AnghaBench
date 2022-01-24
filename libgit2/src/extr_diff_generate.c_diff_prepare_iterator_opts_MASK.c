#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  count; int /*<<< orphan*/  strings; } ;
struct TYPE_10__ {int flags; char* start; char* end; TYPE_1__ pathlist; } ;
typedef  TYPE_2__ git_iterator_options ;
struct TYPE_12__ {int /*<<< orphan*/  count; int /*<<< orphan*/  strings; } ;
struct TYPE_11__ {int flags; TYPE_4__ pathspec; } ;
typedef  TYPE_3__ git_diff_options ;

/* Variables and functions */
 int GIT_DIFF_DISABLE_PATHSPEC_MATCH ; 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(char **prefix, git_iterator_options *a, int aflags,
		git_iterator_options *b, int bflags,
		const git_diff_options *opts)
{
	FUNC1(opts, GIT_DIFF_OPTIONS_VERSION, "git_diff_options");

	*prefix = NULL;

	if (opts && (opts->flags & GIT_DIFF_DISABLE_PATHSPEC_MATCH)) {
		a->pathlist.strings = opts->pathspec.strings;
		a->pathlist.count = opts->pathspec.count;
		b->pathlist.strings = opts->pathspec.strings;
		b->pathlist.count = opts->pathspec.count;
	} else if (opts) {
		*prefix = FUNC2(&opts->pathspec);
		FUNC0(prefix);
	}

	a->flags = aflags;
	b->flags = bflags;
	a->start = b->start = *prefix;
	a->end = b->end = *prefix;

	return 0;
}