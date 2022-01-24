#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_2__ object; } ;
typedef  int /*<<< orphan*/  regex_t ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONELINE_SEEN ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_list*) ; 
 char* FUNC3 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,int /*<<< orphan*/ *) ; 
 struct commit* FUNC6 (struct commit_list**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct commit*,char const*) ; 

__attribute__((used)) static int FUNC12(struct repository *r,
			   const char *prefix, struct object_id *oid,
			   struct commit_list *list)
{
	struct commit_list *backup = NULL, *l;
	int found = 0;
	int negative = 0;
	regex_t regex;

	if (prefix[0] == '!') {
		prefix++;

		if (prefix[0] == '-') {
			prefix++;
			negative = 1;
		} else if (prefix[0] != '!') {
			return -1;
		}
	}

	if (FUNC7(&regex, prefix, REG_EXTENDED))
		return -1;

	for (l = list; l; l = l->next) {
		l->item->object.flags |= ONELINE_SEEN;
		FUNC1(l->item, &backup);
	}
	while (list) {
		const char *p, *buf;
		struct commit *commit;
		int matches;

		commit = FUNC6(&list, ONELINE_SEEN);
		if (!FUNC5(r, &commit->object.oid))
			continue;
		buf = FUNC3(commit, NULL);
		p = FUNC10(buf, "\n\n");
		matches = negative ^ (p && !FUNC8(&regex, p + 2, 0, NULL, 0));
		FUNC11(commit, buf);

		if (matches) {
			FUNC4(oid, &commit->object.oid);
			found = 1;
			break;
		}
	}
	FUNC9(&regex);
	FUNC2(list);
	for (l = backup; l; l = l->next)
		FUNC0(l->item, ONELINE_SEEN);
	FUNC2(backup);
	return found ? 0 : -1;
}