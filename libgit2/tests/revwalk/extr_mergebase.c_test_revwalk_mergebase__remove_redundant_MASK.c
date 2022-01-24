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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_4__ {int /*<<< orphan*/ * ids; int /*<<< orphan*/  count; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ git_oidarray ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_repository *repo;
	git_oid one, two, base;
	git_oidarray result = {NULL, 0};

	FUNC3(FUNC8(&repo, FUNC2("redundant.git")));

	FUNC3(FUNC5(&one, "d89137c93ba1ee749214ff4ce52ae9137bc833f9"));
	FUNC3(FUNC5(&two, "91f4b95df4a59504a9813ba66912562931d990e3"));
	FUNC3(FUNC5(&base, "6cb1f2352d974e1c5a776093017e8772416ac97a"));

	FUNC3(FUNC4(&result, repo, &one, &two));
	FUNC0(1, result.count);
	FUNC1(&base, &result.ids[0]);

	FUNC6(&result);
	FUNC7(repo);
}