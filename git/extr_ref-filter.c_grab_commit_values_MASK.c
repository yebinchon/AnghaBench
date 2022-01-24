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
struct object {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;
struct atom_value {int /*<<< orphan*/  s; scalar_t__ value; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct commit_list*) ; 
 int /*<<< orphan*/ * FUNC1 (struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 TYPE_2__* used_atom ; 
 int used_atom_cnt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct atom_value *val, int deref, struct object *obj)
{
	int i;
	struct commit *commit = (struct commit *) obj;

	for (i = 0; i < used_atom_cnt; i++) {
		const char *name = used_atom[i].name;
		struct atom_value *v = &val[i];
		if (!!deref != (*name == '*'))
			continue;
		if (deref)
			name++;
		if (!FUNC6(name, "tree")) {
			v->s = FUNC7(FUNC2(FUNC1(commit)));
		}
		else if (!FUNC6(name, "numparent")) {
			v->value = FUNC0(commit->parents);
			v->s = FUNC8("%lu", (unsigned long)v->value);
		}
		else if (!FUNC6(name, "parent")) {
			struct commit_list *parents;
			struct strbuf s = STRBUF_INIT;
			for (parents = commit->parents; parents; parents = parents->next) {
				struct commit *parent = parents->item;
				if (parents != commit->parents)
					FUNC3(&s, ' ');
				FUNC4(&s, FUNC2(&parent->object.oid));
			}
			v->s = FUNC5(&s, NULL);
		}
	}
}