#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_3__ {char* id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ one ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void FUNC11(void)
{
	git_oid id, id2;
	git_odb *odb;

	FUNC10(&one);
	FUNC2(FUNC6(&odb, "test-objects"));

	FUNC2(FUNC7(&id, one.id));
	FUNC0(FUNC3(odb, &id));

	FUNC2(FUNC8(&id, "8b137891"));
	FUNC2(FUNC4(&id2, odb, &id, 8));
	FUNC1(0, FUNC9(&id2, one.id));

	/* Test for a missing object */
	FUNC2(FUNC7(&id, "8b137891791fe96927ad78e64b0aad7bded08baa"));
	FUNC0(!FUNC3(odb, &id));

	FUNC2(FUNC8(&id, "8b13789a"));
	FUNC1(GIT_ENOTFOUND, FUNC4(&id2, odb, &id, 8));

	FUNC5(odb);
}