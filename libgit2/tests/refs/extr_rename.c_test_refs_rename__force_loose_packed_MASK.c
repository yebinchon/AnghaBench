#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  packed_head_name ; 
 int /*<<< orphan*/  packed_test_head_name ; 

void FUNC9(void)
{
	/* can force-rename a packed reference with the name of an existing loose and packed reference */
	git_reference *looked_up_ref, *renamed_ref;
	git_oid oid;

	/* An existing reference... */
	FUNC3(FUNC6(&looked_up_ref, g_repo, packed_head_name));
	FUNC4(&oid, FUNC8(looked_up_ref));

	/* Can be force-renamed to the name of another existing reference. */
	FUNC3(FUNC7(&renamed_ref, looked_up_ref, packed_test_head_name, 1, NULL));
	FUNC5(looked_up_ref);
	FUNC5(renamed_ref);

	/* Check we actually renamed it */
	FUNC3(FUNC6(&looked_up_ref, g_repo, packed_test_head_name));
	FUNC1(looked_up_ref->name, packed_test_head_name);
	FUNC0(&oid, FUNC8(looked_up_ref));
	FUNC5(looked_up_ref);

	/* And that the previous one doesn't exist any longer */
	FUNC2(FUNC6(&looked_up_ref, g_repo, packed_head_name));
}