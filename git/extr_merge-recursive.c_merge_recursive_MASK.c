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
struct merge_options {int /*<<< orphan*/  repo; int /*<<< orphan*/ * ancestor; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_options*) ; 
 int FUNC2 (struct merge_options*,struct commit*,struct commit*,struct commit_list*,struct commit**) ; 
 scalar_t__ FUNC3 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct commit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

int FUNC6(struct merge_options *opt,
		    struct commit *h1,
		    struct commit *h2,
		    struct commit_list *merge_bases,
		    struct commit **result)
{
	int clean;

	FUNC0(opt->ancestor == NULL ||
	       !FUNC5(opt->ancestor, "constructed merge base"));

	if (FUNC3(opt, FUNC4(opt->repo, h1)))
		return -1;
	clean = FUNC2(opt, h1, h2, merge_bases, result);
	FUNC1(opt);

	return clean;
}