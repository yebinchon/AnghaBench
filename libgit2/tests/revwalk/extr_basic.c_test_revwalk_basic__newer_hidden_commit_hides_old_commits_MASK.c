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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(void)
{
	git_oid oid;

	FUNC7("revwalk.git");

	FUNC2(FUNC6(_walk, "refs/heads/D"));
	FUNC2(FUNC4(_walk, "refs/heads/B"));
	FUNC2(FUNC4(_walk, "refs/heads/A"));
	FUNC2(FUNC4(_walk, "refs/heads/E"));

	FUNC2(FUNC5(&oid, _walk));
	FUNC0(FUNC3(&oid, "b82cee5004151ae0c4f82b69fb71b87477664b6f"));
	FUNC2(FUNC5(&oid, _walk));
	FUNC0(FUNC3(&oid, "790ba0facf6fd103699a5c40cd19dad277ff49cd"));

	FUNC1(GIT_ITEROVER, FUNC5(&oid, _walk));
}