#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_12__ {int /*<<< orphan*/  st_mode; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; int /*<<< orphan*/  path; TYPE_2__ st; } ;
typedef  TYPE_4__ filesystem_iterator_entry ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  repo; } ;
struct TYPE_15__ {int /*<<< orphan*/  root; TYPE_1__ base; } ;
typedef  TYPE_5__ filesystem_iterator ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OID_RAWSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	filesystem_iterator *iter,
	filesystem_iterator_entry *entry)
{
	git_buf fullpath = GIT_BUF_INIT;
	int error;

	if (FUNC0(entry->st.st_mode)) {
		FUNC5(&entry->id, 0, GIT_OID_RAWSZ);
		return 0;
	}

	if (iter->base.type == GIT_ITERATOR_TYPE_WORKDIR)
		return FUNC4(&entry->id,
			iter->base.repo, entry->path, GIT_OBJECT_BLOB, NULL);

	if (!(error = FUNC2(&fullpath, iter->root, entry->path)))
		error = FUNC3(&entry->id, fullpath.ptr, GIT_OBJECT_BLOB);

	FUNC1(&fullpath);
	return error;
}