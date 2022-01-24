#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ insert_by_date; scalar_t__ uninteresting; scalar_t__ from_glob; } ;
typedef  TYPE_1__ git_revwalk__push_options ;
struct TYPE_11__ {int limited; int did_hide; int did_push; int /*<<< orphan*/ * user_input; int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_revwalk ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_12__ {scalar_t__ uninteresting; } ;
typedef  TYPE_3__ git_commit_list_node ;
typedef  int /*<<< orphan*/  git_commit_list ;

/* Variables and functions */
 int GIT_EINVALIDSPEC ; 
 int GIT_ENOTFOUND ; 
 int GIT_EPEEL ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC10(git_revwalk *walk, const git_oid *oid, const git_revwalk__push_options *opts)
{
	git_oid commit_id;
	int error;
	git_object *obj, *oobj;
	git_commit_list_node *commit;
	git_commit_list *list;

	if ((error = FUNC6(&oobj, walk->repo, oid, GIT_OBJECT_ANY)) < 0)
		return error;

	error = FUNC7(&obj, oobj, GIT_OBJECT_COMMIT);
	FUNC4(oobj);

	if (error == GIT_ENOTFOUND || error == GIT_EINVALIDSPEC || error == GIT_EPEEL) {
		/* If this comes from e.g. push_glob("tags"), ignore this */
		if (opts->from_glob)
			return 0;

		FUNC2(GIT_ERROR_INVALID, "object is not a committish");
		return -1;
	}
	if (error < 0)
		return error;

	FUNC8(&commit_id, FUNC5(obj));
	FUNC4(obj);

	commit = FUNC9(walk, &commit_id);
	if (commit == NULL)
		return -1; /* error already reported by failed lookup */

	/* A previous hide already told us we don't want this commit  */
	if (commit->uninteresting)
		return 0;

	if (opts->uninteresting) {
		walk->limited = 1;
		walk->did_hide = 1;
	} else {
		walk->did_push = 1;
	}

	commit->uninteresting = opts->uninteresting;
	list = walk->user_input;
	if ((opts->insert_by_date &&
	    FUNC1(commit, &list) == NULL) ||
	    FUNC0(commit, &list) == NULL) {
		FUNC3();
		return -1;
	}

	walk->user_input = list;

	return 0;
}