#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/ * g_typechange_empty ; 
 int /*<<< orphan*/ ** g_typechange_oids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	int i;
	git_object *obj;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	for (i = 0; g_typechange_oids[i] != NULL; ++i) {
		FUNC2(FUNC9(&obj, g_repo, g_typechange_oids[i]));

		opts.checkout_strategy = !i ? GIT_CHECKOUT_FORCE : GIT_CHECKOUT_SAFE;

		FUNC2(FUNC3(g_repo, obj, &opts));

		FUNC2(
			FUNC8(g_repo, FUNC5(obj)));

		FUNC0(g_repo, FUNC5(obj), NULL, true);

		FUNC4(obj);

		if (!g_typechange_empty[i]) {
			FUNC1(FUNC7("typechanges"));
			FUNC1(FUNC6("typechanges/a"));
			FUNC1(FUNC6("typechanges/b"));
			FUNC1(FUNC6("typechanges/c"));
			FUNC1(FUNC6("typechanges/d"));
			FUNC1(FUNC6("typechanges/e"));
		} else {
			FUNC1(FUNC7("typechanges"));
			FUNC1(!FUNC6("typechanges/a"));
			FUNC1(!FUNC6("typechanges/b"));
			FUNC1(!FUNC6("typechanges/c"));
			FUNC1(!FUNC6("typechanges/d"));
			FUNC1(!FUNC6("typechanges/e"));
		}
	}
}