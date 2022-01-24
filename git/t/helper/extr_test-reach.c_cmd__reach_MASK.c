#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int len; int* buf; } ;
struct repository {int dummy; } ;
struct ref_filter {int with_commit_tag_algo; } ;
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {int dummy; } ;
struct contains_cache {int dummy; } ;
struct commit_list {TYPE_3__* item; struct commit_list* next; } ;
struct TYPE_4__ {int const flags; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_5__ {int flags; struct object_id oid; } ;
struct TYPE_6__ {TYPE_2__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct commit**,int,int) ; 
 scalar_t__ EOF ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 int /*<<< orphan*/  OBJ_COMMIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 int FUNC4 (struct commit_list*,struct commit_list*,int) ; 
 int FUNC5 (struct object_array*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ref_filter*,struct commit*,struct commit_list*,struct contains_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct commit*,struct commit_list**) ; 
 struct object* FUNC8 (struct object*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct commit_list* FUNC11 (struct commit*,int,struct commit**) ; 
 scalar_t__ FUNC12 (int*,struct object_id*) ; 
 struct commit_list* FUNC13 (struct commit**,int,struct commit**,int,int const) ; 
 int FUNC14 (struct commit*,struct commit*) ; 
 int /*<<< orphan*/  FUNC15 (struct contains_cache*) ; 
 int FUNC16 (struct commit*,struct commit_list*) ; 
 struct commit* FUNC17 (struct repository*,struct object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC19 (struct object_id*,struct object_id*) ; 
 struct object* FUNC20 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC21 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 struct commit_list* FUNC23 (struct commit_list*) ; 
 int FUNC24 (struct object_id*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC26 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC28 (char const*,char*) ; 
 struct repository* the_repository ; 

int FUNC29(int ac, const char **av)
{
	struct object_id oid_A, oid_B;
	struct commit *A, *B;
	struct commit_list *X, *Y;
	struct object_array X_obj = OBJECT_ARRAY_INIT;
	struct commit **X_array, **Y_array;
	int X_nr, X_alloc, Y_nr, Y_alloc;
	struct strbuf buf = STRBUF_INIT;
	struct repository *r = the_repository;

	FUNC25();

	if (ac < 2)
		FUNC10(1);

	A = B = NULL;
	X = Y = NULL;
	X_nr = Y_nr = 0;
	X_alloc = Y_alloc = 16;
	FUNC0(X_array, X_alloc);
	FUNC0(Y_array, Y_alloc);

	while (FUNC26(&buf, stdin) != EOF) {
		struct object_id oid;
		struct object *orig;
		struct object *peeled;
		struct commit *c;
		if (buf.len < 3)
			continue;

		if (FUNC12(buf.buf + 2, &oid))
			FUNC9("failed to resolve %s", buf.buf + 2);

		orig = FUNC20(r, &oid);
		peeled = FUNC8(orig);

		if (!peeled)
			FUNC9("failed to load commit for input %s resulting in oid %s\n",
			    buf.buf, FUNC18(&oid));

		c = FUNC17(r, peeled, OBJ_COMMIT, 0);

		if (!c)
			FUNC9("failed to load commit for input %s resulting in oid %s\n",
			    buf.buf, FUNC18(&oid));

		switch (buf.buf[0]) {
			case 'A':
				FUNC19(&oid_A, &oid);
				A = c;
				break;

			case 'B':
				FUNC19(&oid_B, &oid);
				B = c;
				break;

			case 'X':
				FUNC7(c, &X);
				FUNC1(X_array, X_nr + 1, X_alloc);
				X_array[X_nr++] = c;
				FUNC3(orig, NULL, &X_obj);
				break;

			case 'Y':
				FUNC7(c, &Y);
				FUNC1(Y_array, Y_nr + 1, Y_alloc);
				Y_array[Y_nr++] = c;
				break;

			default:
				FUNC9("unexpected start of line: %c", buf.buf[0]);
		}
	}
	FUNC27(&buf);

	if (!FUNC28(av[1], "ref_newer"))
		FUNC22("%s(A,B):%d\n", av[1], FUNC24(&oid_A, &oid_B));
	else if (!FUNC28(av[1], "in_merge_bases"))
		FUNC22("%s(A,B):%d\n", av[1], FUNC14(A, B));
	else if (!FUNC28(av[1], "is_descendant_of"))
		FUNC22("%s(A,X):%d\n", av[1], FUNC16(A, X));
	else if (!FUNC28(av[1], "get_merge_bases_many")) {
		struct commit_list *list = FUNC11(A, X_nr, X_array);
		FUNC22("%s(A,X):\n", av[1]);
		FUNC21(list);
	} else if (!FUNC28(av[1], "reduce_heads")) {
		struct commit_list *list = FUNC23(X);
		FUNC22("%s(X):\n", av[1]);
		FUNC21(list);
	} else if (!FUNC28(av[1], "can_all_from_reach")) {
		FUNC22("%s(X,Y):%d\n", av[1], FUNC4(X, Y, 1));
	} else if (!FUNC28(av[1], "can_all_from_reach_with_flag")) {
		struct commit_list *iter = Y;

		while (iter) {
			iter->item->object.flags |= 2;
			iter = iter->next;
		}

		FUNC22("%s(X,_,_,0,0):%d\n", av[1], FUNC5(&X_obj, 2, 4, 0, 0));
	} else if (!FUNC28(av[1], "commit_contains")) {
		struct ref_filter filter;
		struct contains_cache cache;
		FUNC15(&cache);

		if (ac > 2 && !FUNC28(av[2], "--tag"))
			filter.with_commit_tag_algo = 1;
		else
			filter.with_commit_tag_algo = 0;

		FUNC22("%s(_,A,X,_):%d\n", av[1], FUNC6(&filter, A, X, &cache));
	} else if (!FUNC28(av[1], "get_reachable_subset")) {
		const int reachable_flag = 1;
		int i, count = 0;
		struct commit_list *current;
		struct commit_list *list = FUNC13(X_array, X_nr,
								Y_array, Y_nr,
								reachable_flag);
		FUNC22("get_reachable_subset(X,Y)\n");
		for (current = list; current; current = current->next) {
			if (!(list->item->object.flags & reachable_flag))
				FUNC9(FUNC2("commit %s is not marked reachable"),
				    FUNC18(&list->item->object.oid));
			count++;
		}
		for (i = 0; i < Y_nr; i++) {
			if (Y_array[i]->object.flags & reachable_flag)
				count--;
		}

		if (count < 0)
			FUNC9(FUNC2("too many commits marked reachable"));

		FUNC21(list);
	}

	FUNC10(0);
}