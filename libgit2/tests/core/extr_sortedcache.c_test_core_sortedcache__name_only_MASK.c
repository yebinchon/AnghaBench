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
typedef  int /*<<< orphan*/  git_sortedcache ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  name_only_cmp ; 

void FUNC15(void)
{
	git_sortedcache *sc;
	void *item;
	size_t pos;

	FUNC4(FUNC11(
		&sc, 0, NULL, NULL, name_only_cmp, NULL));

	FUNC4(FUNC13(sc));
	FUNC4(FUNC12(&item, sc, "aaa"));
	FUNC4(FUNC12(&item, sc, "bbb"));
	FUNC4(FUNC12(&item, sc, "zzz"));
	FUNC4(FUNC12(&item, sc, "mmm"));
	FUNC4(FUNC12(&item, sc, "iii"));
	FUNC14(sc);

	FUNC3(5, FUNC7(sc));

	FUNC0((item = FUNC9(sc, "aaa")) != NULL);
	FUNC2("aaa", item);
	FUNC0((item = FUNC9(sc, "mmm")) != NULL);
	FUNC2("mmm", item);
	FUNC0((item = FUNC9(sc, "zzz")) != NULL);
	FUNC2("zzz", item);
	FUNC0(FUNC9(sc, "qqq") == NULL);

	FUNC0((item = FUNC6(sc, 0)) != NULL);
	FUNC2("aaa", item);
	FUNC0((item = FUNC6(sc, 1)) != NULL);
	FUNC2("bbb", item);
	FUNC0((item = FUNC6(sc, 2)) != NULL);
	FUNC2("iii", item);
	FUNC0((item = FUNC6(sc, 3)) != NULL);
	FUNC2("mmm", item);
	FUNC0((item = FUNC6(sc, 4)) != NULL);
	FUNC2("zzz", item);
	FUNC0(FUNC6(sc, 5) == NULL);

	FUNC4(FUNC10(&pos, sc, "aaa"));
	FUNC3(0, pos);
	FUNC4(FUNC10(&pos, sc, "iii"));
	FUNC3(2, pos);
	FUNC4(FUNC10(&pos, sc, "zzz"));
	FUNC3(4, pos);
	FUNC1(
		GIT_ENOTFOUND, FUNC10(&pos, sc, "abc"));

	FUNC5(sc, true);

	FUNC3(0, FUNC7(sc));
	FUNC0(FUNC6(sc, 0) == NULL);
	FUNC0(FUNC9(sc, "aaa") == NULL);
	FUNC0(FUNC6(sc, 0) == NULL);

	FUNC8(sc);
}