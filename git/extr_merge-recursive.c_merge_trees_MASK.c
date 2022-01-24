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
struct tree {int dummy; } ;
struct merge_options {int /*<<< orphan*/ * ancestor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_options*) ; 
 scalar_t__ FUNC2 (struct merge_options*,struct tree*) ; 
 int FUNC3 (struct merge_options*,struct tree*,struct tree*,struct tree*,struct tree**) ; 

int FUNC4(struct merge_options *opt,
		struct tree *head,
		struct tree *merge,
		struct tree *merge_base)
{
	int clean;
	struct tree *ignored;

	FUNC0(opt->ancestor != NULL);

	if (FUNC2(opt, head))
		return -1;
	clean = FUNC3(opt, head, merge, merge_base, &ignored);
	FUNC1(opt);

	return clean;
}