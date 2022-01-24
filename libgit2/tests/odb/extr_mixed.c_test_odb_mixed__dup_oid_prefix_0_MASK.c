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
typedef  int /*<<< orphan*/  hex ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_EAMBIGUOUS ; 
 int /*<<< orphan*/  _odb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

void FUNC10(void) {
	char hex[10];
	git_oid oid, found;
	git_odb_object *obj;

	/* ambiguous in the same pack file */

	FUNC9(hex, "dea509d0", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC3(&found, _odb, &oid, FUNC8(hex)));

	FUNC9(hex, "dea509d09", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC2(FUNC3(&found, _odb, &oid, FUNC8(hex)));
	FUNC1(&found, FUNC5(obj));
	FUNC4(obj);

	FUNC9(hex, "dea509d0b", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC4(obj);

	/* ambiguous in different pack files */

	FUNC9(hex, "81b5bff5", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC3(&found, _odb, &oid, FUNC8(hex)));

	FUNC9(hex, "81b5bff5b", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC2(FUNC3(&found, _odb, &oid, FUNC8(hex)));
	FUNC1(&found, FUNC5(obj));
	FUNC4(obj);

	FUNC9(hex, "81b5bff5f", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC4(obj);

	/* ambiguous in pack file and loose */

	FUNC9(hex, "0ddeaded", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC0(
		GIT_EAMBIGUOUS, FUNC3(&found, _odb, &oid, FUNC8(hex)));

	FUNC9(hex, "0ddeaded9", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC2(FUNC3(&found, _odb, &oid, FUNC8(hex)));
	FUNC1(&found, FUNC5(obj));
	FUNC4(obj);

	FUNC9(hex, "0ddeadede", sizeof(hex));
	FUNC2(FUNC7(&oid, hex, FUNC8(hex)));
	FUNC2(FUNC6(&obj, _odb, &oid, FUNC8(hex)));
	FUNC4(obj);
}