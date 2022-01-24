#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t length; TYPE_1__** contents; } ;
struct TYPE_9__ {int /*<<< orphan*/  committer; struct TYPE_9__* msg; int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  oid_old; TYPE_4__ entries; struct TYPE_9__* ref_name; } ;
typedef  TYPE_1__ git_reflog_entry ;
typedef  TYPE_1__ git_reflog ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_4__*,size_t) ; 

__attribute__((used)) static int FUNC6(git_reflog **out, const git_reflog *in, git_pool *pool)
{
	git_reflog *reflog;
	git_reflog_entry *entries;
	size_t len, i;

	reflog = FUNC2(pool, sizeof(git_reflog));
	FUNC0(reflog);

	reflog->ref_name = FUNC3(pool, in->ref_name);
	FUNC0(reflog->ref_name);

	len = in->entries.length;
	reflog->entries.length = len;
	reflog->entries.contents = FUNC2(pool, len * sizeof(void *));
	FUNC0(*reflog->entries.contents);

	entries = FUNC2(pool, len * sizeof(git_reflog_entry));
	FUNC0(entries);

	for (i = 0; i < len; i++) {
		const git_reflog_entry *src;
		git_reflog_entry *tgt;

		tgt = &entries[i];
		reflog->entries.contents[i] = tgt;

		src = FUNC5(&in->entries, i);
		FUNC1(&tgt->oid_old, &src->oid_old);
		FUNC1(&tgt->oid_cur, &src->oid_cur);

		tgt->msg = FUNC3(pool, src->msg);
		FUNC0(tgt->msg);

		if (FUNC4(&tgt->committer, src->committer, pool) < 0)
			return -1;
	}


	*out = reflog;
	return 0;
}