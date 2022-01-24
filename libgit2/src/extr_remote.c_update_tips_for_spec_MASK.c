#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {unsigned int length; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_32__ {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_remote_head ;
struct TYPE_33__ {scalar_t__ (* update_tips ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  payload; } ;
typedef  TYPE_3__ git_remote_callbacks ;
typedef  scalar_t__ git_remote_autotag_option_t ;
struct TYPE_34__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_4__ git_remote ;
struct TYPE_35__ {scalar_t__ dst; } ;
typedef  TYPE_5__ git_refspec ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_36__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_6__ git_buf ;

/* Variables and functions */
 TYPE_6__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_OID_RAWSZ ; 
 int /*<<< orphan*/  GIT_REFSPEC_TAGS ; 
 scalar_t__ GIT_REMOTE_DOWNLOAD_TAGS_AUTO ; 
 scalar_t__ GIT_REMOTE_DOWNLOAD_TAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*,TYPE_5__*,TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 TYPE_2__* FUNC18 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(
		git_remote *remote,
		const git_remote_callbacks *callbacks,
		int update_fetchhead,
		git_remote_autotag_option_t tagopt,
		git_refspec *spec,
		git_vector *refs,
		const char *log_message)
{
	int error = 0, autotag;
	unsigned int i = 0;
	git_buf refname = GIT_BUF_INIT;
	git_oid old;
	git_odb *odb;
	git_remote_head *head;
	git_reference *ref;
	git_refspec tagspec;
	git_vector update_heads;

	FUNC0(remote);

	if (FUNC16(&odb, remote->repo) < 0)
		return -1;

	if (FUNC12(&tagspec, GIT_REFSPEC_TAGS, true) < 0)
		return -1;

	/* Make a copy of the transport's refs */
	if (FUNC19(&update_heads, 16, NULL) < 0)
		return -1;

	for (; i < refs->length; ++i) {
		head = FUNC18(refs, i);
		autotag = 0;
		FUNC1(&refname);

		/* Ignore malformed ref names (which also saves us from tag^{} */
		if (!FUNC9(head->name))
			continue;

		/* If we have a tag, see if the auto-follow rules say to update it */
		if (FUNC13(&tagspec, head->name)) {
			if (tagopt != GIT_REMOTE_DOWNLOAD_TAGS_NONE) {

				if (tagopt == GIT_REMOTE_DOWNLOAD_TAGS_AUTO)
					autotag = 1;

				FUNC1(&refname);
				if (FUNC4(&refname, head->name) < 0)
					goto on_error;
			}
		}

		/* If we didn't want to auto-follow the tag, check if the refspec matches */
		if (!autotag && FUNC13(spec, head->name)) {
			if (spec->dst) {
				if (FUNC14(&refname, spec, head->name) < 0)
					goto on_error;
			} else {
				/*
				 * no rhs mans store it in FETCH_HEAD, even if we don't
				 update anything else.
				 */
				if ((error = FUNC20(&update_heads, head)) < 0)
					goto on_error;

				continue;
			}
		}

		/* If we still don't have a refname, we don't want it */
		if (FUNC3(&refname) == 0) {
			continue;
		}

		/* In autotag mode, only create tags for objects already in db */
		if (autotag && !FUNC5(odb, &head->oid))
			continue;

		if (!autotag && FUNC20(&update_heads, head) < 0)
			goto on_error;

		error = FUNC10(&old, remote->repo, refname.ptr);
		if (error < 0 && error != GIT_ENOTFOUND)
			goto on_error;

		if (error == GIT_ENOTFOUND) {
			FUNC21(&old, 0, GIT_OID_RAWSZ);

			if (autotag && FUNC20(&update_heads, head) < 0)
				goto on_error;
		}

		if (!FUNC6(&old, &head->oid))
			continue;

		/* In autotag mode, don't overwrite any locally-existing tags */
		error = FUNC7(&ref, remote->repo, refname.ptr, &head->oid, !autotag,
				log_message);

		if (error == GIT_EEXISTS)
			continue;

		if (error < 0)
			goto on_error;

		FUNC8(ref);

		if (callbacks && callbacks->update_tips != NULL) {
			if (callbacks->update_tips(refname.ptr, &old, &head->oid, callbacks->payload) < 0)
				goto on_error;
		}
	}

	if (update_fetchhead &&
	    (error = FUNC15(remote, spec, &update_heads)) < 0)
		goto on_error;

	FUNC17(&update_heads);
	FUNC11(&tagspec);
	FUNC2(&refname);
	return 0;

on_error:
	FUNC17(&update_heads);
	FUNC11(&tagspec);
	FUNC2(&refname);
	return -1;

}