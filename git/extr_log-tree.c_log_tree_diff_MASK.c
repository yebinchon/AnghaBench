#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  exit_with_status; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct rev_info {struct log_info* loginfo; TYPE_2__ diffopt; scalar_t__ first_parent_only; scalar_t__ combine_merges; scalar_t__ ignore_merges; scalar_t__ show_root_diff; int /*<<< orphan*/  diff; } ;
struct object_id {int dummy; } ;
struct log_info {struct commit* parent; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id*,struct object_id*,char*,TYPE_2__*) ; 
 int FUNC2 (struct rev_info*,struct commit*) ; 
 struct object_id* FUNC3 (struct commit*) ; 
 struct commit_list* FUNC4 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct commit*) ; 

__attribute__((used)) static int FUNC7(struct rev_info *opt, struct commit *commit, struct log_info *log)
{
	int showed_log;
	struct commit_list *parents;
	struct object_id *oid;

	if (!opt->diff && !opt->diffopt.flags.exit_with_status)
		return 0;

	FUNC6(commit);
	oid = FUNC3(commit);

	/* Root commit? */
	parents = FUNC4(opt, commit);
	if (!parents) {
		if (opt->show_root_diff) {
			FUNC0(oid, "", &opt->diffopt);
			FUNC5(opt);
		}
		return !opt->loginfo;
	}

	/* More than one parent? */
	if (parents && parents->next) {
		if (opt->ignore_merges)
			return 0;
		else if (opt->combine_merges)
			return FUNC2(opt, commit);
		else if (opt->first_parent_only) {
			/*
			 * Generate merge log entry only for the first
			 * parent, showing summary diff of the others
			 * we merged _in_.
			 */
			FUNC6(parents->item);
			FUNC1(FUNC3(parents->item),
				      oid, "", &opt->diffopt);
			FUNC5(opt);
			return !opt->loginfo;
		}

		/* If we show individual diffs, show the parent info */
		log->parent = parents->item;
	}

	showed_log = 0;
	for (;;) {
		struct commit *parent = parents->item;

		FUNC6(parent);
		FUNC1(FUNC3(parent),
			      oid, "", &opt->diffopt);
		FUNC5(opt);

		showed_log |= !opt->loginfo;

		/* Set up the log info for the next parent, if any.. */
		parents = parents->next;
		if (!parents)
			break;
		log->parent = parents->item;
		opt->loginfo = log;
	}
	return showed_log;
}