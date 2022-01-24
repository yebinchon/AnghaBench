#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_remote_head ;
typedef  scalar_t__ git_remote_autotag_option_t ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ download_tags; int /*<<< orphan*/  repo; int /*<<< orphan*/  refs; TYPE_5__ active_refspecs; } ;
typedef  TYPE_1__ git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_9__ {scalar_t__ download_tags; } ;
typedef  TYPE_2__ git_fetch_options ;

/* Variables and functions */
 char* GIT_REFSPEC_TAGS ; 
 scalar_t__ GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const***,size_t*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC7(git_remote *remote, const git_fetch_options *opts)
{
	git_remote_head **heads;
	git_refspec tagspec, head;
	int error = 0;
	git_odb *odb;
	size_t i, heads_len;
	git_remote_autotag_option_t tagopt = remote->download_tags;

	if (opts && opts->download_tags != GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED)
		tagopt = opts->download_tags;

	FUNC5(&remote->refs);
	if ((error = FUNC2(&tagspec, GIT_REFSPEC_TAGS, true)) < 0)
		return error;

	/*
	 * The fetch refspec can be NULL, and what this means is that the
	 * user didn't specify one. This is fine, as it means that we're
	 * not interested in any particular branch but just the remote's
	 * HEAD, which will be stored in FETCH_HEAD after the fetch.
	 */
	if (remote->active_refspecs.length == 0) {
		if ((error = FUNC2(&head, "HEAD", true)) < 0)
			goto cleanup;

		error = FUNC1(&remote->active_refspecs, &head, &remote->refs);
		FUNC0(&head);

		if (error < 0)
			goto cleanup;
	}

	if (FUNC4(&odb, remote->repo) < 0)
		goto cleanup;

	if (FUNC3((const git_remote_head ***)&heads, &heads_len, remote) < 0)
		goto cleanup;

	for (i = 0; i < heads_len; i++) {
		if ((error = FUNC6(remote, heads[i], odb, &tagspec, tagopt)) < 0)
			break;
	}

cleanup:
	FUNC0(&tagspec);

	return error;
}