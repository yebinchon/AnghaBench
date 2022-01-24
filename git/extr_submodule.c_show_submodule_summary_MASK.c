#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rev_info {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct commit_list*) ; 
 struct repository* FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (struct rev_info*,char const*,struct commit*,struct commit*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,struct rev_info*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*) ; 
 int /*<<< orphan*/  FUNC8 (struct diff_options*,char const*,struct object_id*,struct object_id*,unsigned int,struct repository*,struct commit**,struct commit**,struct commit_list**) ; 

void FUNC9(struct diff_options *o, const char *path,
		struct object_id *one, struct object_id *two,
		unsigned dirty_submodule)
{
	struct rev_info rev;
	struct commit *left = NULL, *right = NULL;
	struct commit_list *merge_bases = NULL;
	struct repository *sub;

	sub = FUNC4(path);
	FUNC8(o, path, one, two, dirty_submodule,
			      sub, &left, &right, &merge_bases);

	/*
	 * If we don't have both a left and a right pointer, there is no
	 * reason to try and display a summary. The header line should contain
	 * all the information the user needs.
	 */
	if (!left || !right || !sub)
		goto out;

	/* Treat revision walker failure the same as missing commits */
	if (FUNC5(&rev, path, left, right, merge_bases)) {
		FUNC1(o, "(revision walker failed)\n");
		goto out;
	}

	FUNC6(sub, &rev, o);

out:
	if (merge_bases)
		FUNC3(merge_bases);
	FUNC0(left, ~0);
	FUNC0(right, ~0);
	if (sub) {
		FUNC7(sub);
		FUNC2(sub);
	}
}