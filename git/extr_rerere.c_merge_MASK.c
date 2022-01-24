#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rerere_id {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ mmfile_t ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ mmbuffer_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct index_state*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rerere_id const*,char*) ; 
 int FUNC9 (struct index_state*,struct rerere_id const*,char const*,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct index_state *istate, const struct rerere_id *id, const char *path)
{
	FILE *f;
	int ret;
	mmfile_t cur = {NULL, 0};
	mmbuffer_t result = {NULL, 0};

	/*
	 * Normalize the conflicts in path and write it out to
	 * "thisimage" temporary file.
	 */
	if ((FUNC6(istate, path, NULL, FUNC8(id, "thisimage")) < 0) ||
	    FUNC7(&cur, FUNC8(id, "thisimage"))) {
		ret = 1;
		goto out;
	}

	ret = FUNC9(istate, id, path, &cur, &result);
	if (ret)
		goto out;

	/*
	 * A successful replay of recorded resolution.
	 * Mark that "postimage" was used to help gc.
	 */
	if (FUNC10(FUNC8(id, "postimage"), NULL) < 0)
		FUNC11(FUNC0("failed utime() on '%s'"),
			      FUNC8(id, "postimage"));

	/* Update "path" with the resolution */
	f = FUNC3(path, "w");
	if (!f)
		return FUNC1(FUNC0("could not open '%s'"), path);
	if (FUNC5(result.ptr, result.size, 1, f) != 1)
		FUNC1(FUNC0("could not write '%s'"), path);
	if (FUNC2(f))
		return FUNC1(FUNC0("writing '%s' failed"), path);

out:
	FUNC4(cur.ptr);
	FUNC4(result.ptr);

	return ret;
}