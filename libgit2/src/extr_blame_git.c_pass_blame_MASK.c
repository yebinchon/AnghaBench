#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sg_buf ;
typedef  int /*<<< orphan*/  git_commit ;
struct TYPE_23__ {struct TYPE_23__* previous; scalar_t__ blob; int /*<<< orphan*/ * commit; } ;
typedef  TYPE_2__ git_blame__origin ;
struct TYPE_22__ {int /*<<< orphan*/  oldest_commit; } ;
struct TYPE_24__ {TYPE_1__ options; } ;
typedef  TYPE_3__ git_blame ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__**) ; 
 int GIT_BLAME_FIRST_PARENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__** FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC16 (TYPE_3__*,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC17(git_blame *blame, git_blame__origin *origin, uint32_t opt)
{
	git_commit *commit = origin->commit;
	int i, num_parents;
	git_blame__origin *sg_buf[16];
	git_blame__origin *porigin, **sg_origin = sg_buf;
	int ret, error = 0;

	num_parents = FUNC9(commit);
	if (!FUNC10(FUNC7(commit), &blame->options.oldest_commit))
		/* Stop at oldest specified commit */
		num_parents = 0;
	else if (opt & GIT_BLAME_FIRST_PARENT && num_parents > 1)
		/* Limit search to the first parent */
		num_parents = 1;

	if (!num_parents) {
		FUNC11(&blame->options.oldest_commit, FUNC7(commit));
		goto finish;
	} else if (num_parents < (int)FUNC0(sg_buf))
		FUNC12(sg_buf, 0, sizeof(sg_buf));
	else {
		sg_origin = FUNC3(num_parents, sizeof(*sg_origin));
		FUNC1(sg_origin);
	}

	for (i=0; i<num_parents; i++) {
		git_commit *p;
		int j, same;

		if (sg_origin[i])
			continue;

		if ((error = FUNC8(&p, origin->commit, i)) < 0)
			goto finish;
		porigin = FUNC2(blame, p, origin);

		if (!porigin) {
			/*
			 * We only have to decrement the parent's
			 * reference count when no porigin has
			 * been created, as otherwise the commit
			 * is assigned to the created object.
			 */
			FUNC6(p);
			continue;
		}
		if (porigin->blob && origin->blob &&
		    !FUNC10(FUNC5(porigin->blob), FUNC5(origin->blob))) {
			error = FUNC16(blame, origin, porigin);
			FUNC13(porigin);
			goto finish;
		}
		for (j = same = 0; j<i; j++)
			if (sg_origin[j] &&
				 !FUNC10(FUNC5(sg_origin[j]->blob), FUNC5(porigin->blob))) {
				same = 1;
				break;
			}
		if (!same)
			sg_origin[i] = porigin;
		else
			FUNC13(porigin);
	}

	/* Standard blame */
	for (i=0; i<num_parents; i++) {
		git_blame__origin *porigin = sg_origin[i];
		if (!porigin)
			continue;
		if (!origin->previous) {
			FUNC14(porigin);
			origin->previous = porigin;
		}

		if ((ret = FUNC15(blame, origin, porigin)) != 0) {
			if (ret < 0)
				error = -1;

			goto finish;
		}
	}

	/* TODO: optionally find moves in parents' files */

	/* TODO: optionally find copies in parents' files */

finish:
	for (i=0; i<num_parents; i++)
		if (sg_origin[i])
			FUNC13(sg_origin[i]);
	if (sg_origin != sg_buf)
		FUNC4(sg_origin);
	return error;
}