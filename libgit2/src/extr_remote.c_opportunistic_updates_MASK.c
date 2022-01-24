#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_20__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_remote_head ;
struct TYPE_21__ {scalar_t__ (* update_tips ) (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; } ;
typedef  TYPE_3__ git_remote_callbacks ;
struct TYPE_22__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_4__ git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_23__ {TYPE_1__ member_0; } ;
typedef  TYPE_5__ git_oid ;
struct TYPE_24__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_6__ git_buf ;

/* Variables and functions */
 TYPE_6__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_2__**,size_t*,size_t*,size_t*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const git_remote *remote, const git_remote_callbacks *callbacks,
				 git_vector *refs, const char *msg)
{
	size_t i, j, k;
	git_refspec *spec;
	git_remote_head *head;
	git_reference *ref;
	git_buf refname = GIT_BUF_INIT;
	int error = 0;

	i = j = k = 0;

	while ((error = FUNC8(remote, refs, &spec, &head, &i, &j, &k)) == 0) {
		git_oid old = {{ 0 }};
		/*
		 * If we got here, there is a refspec which was used
		 * for fetching which matches the source of one of the
		 * passive refspecs, so we should update that
		 * remote-tracking branch, but not add it to
		 * FETCH_HEAD
		 */

		FUNC0(&refname);
		if ((error = FUNC7(&refname, spec, head->name)) < 0)
			goto cleanup;

		error = FUNC6(&old, remote->repo, refname.ptr);
		if (error < 0 && error != GIT_ENOTFOUND)
			goto cleanup;

		if (!FUNC2(&old, &head->oid))
			continue;

		/* If we did find a current reference, make sure we haven't lost a race */
		if (error)
			error = FUNC3(&ref, remote->repo, refname.ptr, &head->oid, true, msg);
		else
			error = FUNC4(&ref, remote->repo, refname.ptr, &head->oid, true, &old, msg);
		FUNC5(ref);
		if (error < 0)
			goto cleanup;

		if (callbacks && callbacks->update_tips != NULL) {
			if (callbacks->update_tips(refname.ptr, &old, &head->oid, callbacks->payload) < 0)
				goto cleanup;
		}
	}

	if (error == GIT_ITEROVER)
		error = 0;

cleanup:
	FUNC1(&refname);
	return error;
}