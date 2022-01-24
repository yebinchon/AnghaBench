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
struct unpack_trees_options {struct string_list* unpack_rejects; } ;
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,int) ; 
 int NB_UNPACK_TREES_ERROR_TYPES ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct unpack_trees_options *o)
{
	int e, i;
	int something_displayed = 0;
	for (e = 0; e < NB_UNPACK_TREES_ERROR_TYPES; e++) {
		struct string_list *rejects = &o->unpack_rejects[e];
		if (rejects->nr > 0) {
			struct strbuf path = STRBUF_INIT;
			something_displayed = 1;
			for (i = 0; i < rejects->nr; i++)
				FUNC4(&path, "\t%s\n", rejects->items[i].string);
			FUNC2(FUNC0(o, e), FUNC7(path.buf));
			FUNC5(&path);
		}
		FUNC6(rejects, 0);
	}
	if (something_displayed)
		FUNC3(stderr, "%s", FUNC1("Aborting\n"));
}