#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct TYPE_7__ {struct object_id oid; } ;
struct tree {TYPE_1__ object; } ;
struct strbuf {int dummy; } ;
struct repository {struct index_state* index; } ;
struct index_state {int cache_nr; TYPE_5__** cache; } ;
struct TYPE_10__ {int exit_with_status; int quick; scalar_t__ has_changes; } ;
struct diff_options {TYPE_4__ flags; } ;
struct TYPE_12__ {int nr; TYPE_3__** queue; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__* two; } ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_options*) ; 
 TYPE_6__ diff_queued_diff ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 

int FUNC7(struct repository *repo,
			   struct tree *tree,
			   struct strbuf *sb)
{
	struct index_state *istate = repo->index;
	struct object_id cmp;
	int i;

	if (tree)
		cmp = tree->object.oid;
	if (tree || !FUNC3("HEAD", &cmp)) {
		struct diff_options opt;

		FUNC4(repo, &opt);
		opt.flags.exit_with_status = 1;
		if (!sb)
			opt.flags.quick = 1;
		FUNC2(&cmp, &opt);
		FUNC1(&opt);
		for (i = 0; sb && i < diff_queued_diff.nr; i++) {
			if (i)
				FUNC5(sb, ' ');
			FUNC6(sb, diff_queued_diff.queue[i]->two->path);
		}
		FUNC0(&opt);
		return opt.flags.has_changes != 0;
	} else {
		for (i = 0; sb && i < istate->cache_nr; i++) {
			if (i)
				FUNC5(sb, ' ');
			FUNC6(sb, istate->cache[i]->name);
		}
		return !!istate->cache_nr;
	}
}