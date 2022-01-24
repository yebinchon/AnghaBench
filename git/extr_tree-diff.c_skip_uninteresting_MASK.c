#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tree_desc {scalar_t__ size; int /*<<< orphan*/  entry; } ;
struct strbuf {int dummy; } ;
struct diff_options {int /*<<< orphan*/  pathspec; TYPE_1__* repo; } ;
typedef  enum interesting { ____Placeholder_interesting } interesting ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int all_entries_not_interesting ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_desc*) ; 

__attribute__((used)) static void FUNC2(struct tree_desc *t, struct strbuf *base,
			       struct diff_options *opt)
{
	enum interesting match;

	while (t->size) {
		match = FUNC0(opt->repo->index, &t->entry,
					       base, 0, &opt->pathspec);
		if (match) {
			if (match == all_entries_not_interesting)
				t->size = 0;
			break;
		}
		FUNC1(t);
	}
}