#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  repo; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ git_filter_source ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  path; int /*<<< orphan*/  repo; } ;
struct TYPE_10__ {TYPE_1__ source; int /*<<< orphan*/  path; } ;
typedef  TYPE_3__ git_filter_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 TYPE_3__* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	git_filter_list **out, const git_filter_source *src)
{
	git_filter_list *fl = NULL;
	size_t pathlen = src->path ? FUNC4(src->path) : 0, alloclen;

	FUNC1(&alloclen, sizeof(git_filter_list), pathlen);
	FUNC1(&alloclen, alloclen, 1);

	fl = FUNC2(1, alloclen);
	FUNC0(fl);

	if (src->path)
		FUNC3(fl->path, src->path, pathlen);
	fl->source.repo = src->repo;
	fl->source.path = fl->path;
	fl->source.mode = src->mode;
	fl->source.flags = src->flags;

	*out = fl;
	return 0;
}