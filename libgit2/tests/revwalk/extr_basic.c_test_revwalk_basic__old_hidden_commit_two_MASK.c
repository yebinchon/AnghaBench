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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(void)
{
	git_oid new_id, old_id, oid;

	FUNC8("testrepo.git");

	FUNC2(FUNC3(&new_id, "bd758010071961f28336333bc41e9c64c9a64866"));
	FUNC2(FUNC7(_walk, &new_id));

	FUNC2(FUNC3(&old_id, "b91e763008b10db366442469339f90a2b8400d0a"));
	FUNC2(FUNC5(_walk, &old_id));

	FUNC2(FUNC6(&oid, _walk));
	FUNC0(!FUNC4(&oid, "bd758010071961f28336333bc41e9c64c9a64866"));

	FUNC1(GIT_ITEROVER, FUNC6(&oid, _walk));
}