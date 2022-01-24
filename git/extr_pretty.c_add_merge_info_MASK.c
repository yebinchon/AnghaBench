#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct pretty_print_context {scalar_t__ fmt; int /*<<< orphan*/  abbrev; } ;
struct object_id {int dummy; } ;
struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {struct object_id oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_ONELINE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC5(const struct pretty_print_context *pp,
			   struct strbuf *sb, const struct commit *commit)
{
	struct commit_list *parent = commit->parents;

	if ((pp->fmt == CMIT_FMT_ONELINE) || (FUNC0(pp->fmt)) ||
	    !parent || !parent->next)
		return;

	FUNC4(sb, "Merge:");

	while (parent) {
		struct object_id *oidp = &parent->item->object.oid;
		FUNC3(sb, ' ');
		if (pp->abbrev)
			FUNC2(sb, oidp, pp->abbrev);
		else
			FUNC4(sb, FUNC1(oidp));
		parent = parent->next;
	}
	FUNC3(sb, '\n');
}