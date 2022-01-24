#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct transfer_request {struct transfer_request* next; } ;
struct rev_info {scalar_t__ edge_hint; } ;
struct remote_lock {int dummy; } ;
struct refspec {int nr; TYPE_1__* items; } ;
struct ref {char const* name; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  old_oid; TYPE_2__* peer_ref; int /*<<< orphan*/  force; struct ref* next; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
struct TYPE_8__ {int can_update_info_refs; void* has_info_refs; void* has_info_packs; scalar_t__ url; scalar_t__ path; void* path_len; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  new_oid; } ;
struct TYPE_6__ {char* src; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  LOCK_TIME ; 
 int /*<<< orphan*/  MATCH_REFS_ALL ; 
 struct refspec REFSPEC_INIT_PUSH ; 
 scalar_t__ aborted ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int dry_run ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int force_all ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct rev_info*,struct remote_lock*) ; 
 struct ref* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int helper_status ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int http_is_verbose ; 
 int /*<<< orphan*/  http_push_usage ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ is_running_queue ; 
 struct remote_lock* FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct rev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct ref*,struct ref**,struct refspec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 char* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 int /*<<< orphan*/  push_all ; 
 int push_verbosely ; 
 int pushing ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct refspec*,char const**,int) ; 
 int /*<<< orphan*/  FUNC30 (struct transfer_request*) ; 
 int /*<<< orphan*/  remote_dir_exists ; 
 void* FUNC31 (char*) ; 
 struct ref* remote_refs ; 
 int /*<<< orphan*/  remove_locks_on_signal ; 
 TYPE_3__* repo ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ ) ; 
 struct transfer_request* request_queue_head ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC37 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC38 (char*,char) ; 
 scalar_t__ FUNC39 (char const*,char*) ; 
 void* FUNC40 (scalar_t__) ; 
 char* FUNC41 (char const*,char*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC42 (struct remote_lock*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,struct remote_lock*) ; 
 int /*<<< orphan*/  FUNC44 (struct remote_lock*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC46 (int,int) ; 

int FUNC47(int argc, const char **argv)
{
	struct transfer_request *request;
	struct transfer_request *next_request;
	struct refspec rs = REFSPEC_INIT_PUSH;
	struct remote_lock *ref_lock = NULL;
	struct remote_lock *info_ref_lock = NULL;
	struct rev_info revs;
	int delete_branch = 0;
	int force_delete = 0;
	int objects_to_send;
	int rc = 0;
	int i;
	int new_refs;
	struct ref *ref, *local_refs;

	repo = FUNC46(1, sizeof(*repo));

	argv++;
	for (i = 1; i < argc; i++, argv++) {
		const char *arg = *argv;

		if (*arg == '-') {
			if (!FUNC39(arg, "--all")) {
				push_all = MATCH_REFS_ALL;
				continue;
			}
			if (!FUNC39(arg, "--force")) {
				force_all = 1;
				continue;
			}
			if (!FUNC39(arg, "--dry-run")) {
				dry_run = 1;
				continue;
			}
			if (!FUNC39(arg, "--helper-status")) {
				helper_status = 1;
				continue;
			}
			if (!FUNC39(arg, "--verbose")) {
				push_verbosely = 1;
				http_is_verbose = 1;
				continue;
			}
			if (!FUNC39(arg, "-d")) {
				delete_branch = 1;
				continue;
			}
			if (!FUNC39(arg, "-D")) {
				delete_branch = 1;
				force_delete = 1;
				continue;
			}
			if (!FUNC39(arg, "-h"))
				FUNC45(http_push_usage);
		}
		if (!repo->url) {
			char *path = FUNC41(arg, "//");
			FUNC37(arg, &repo->url);
			repo->path_len = FUNC40(repo->url);
			if (path) {
				repo->path = FUNC38(path+2, '/');
				if (repo->path)
					repo->path_len = FUNC40(repo->path);
			}
			continue;
		}
		FUNC29(&rs, argv, argc - i);
		break;
	}

#ifndef USE_CURL_MULTI
	FUNC5("git-push is not available for http/https repository when not compiled with USE_CURL_MULTI");
#endif

	if (!repo->url)
		FUNC45(http_push_usage);

	if (delete_branch && rs.nr != 1)
		FUNC5("You must specify only one branch name when deleting a remote branch");

	FUNC34();

	FUNC22(remote_dir_exists, -1, 256);

	FUNC16(NULL, repo->url, 1);

#ifdef USE_CURL_MULTI
	is_running_queue = 0;
#endif

	/* Verify DAV compliance/lock support */
	if (!FUNC19()) {
		rc = 1;
		goto cleanup;
	}

	FUNC36(remove_locks_on_signal);

	/* Check whether the remote has server info files */
	repo->can_update_info_refs = 0;
	repo->has_info_refs = FUNC31("info/refs");
	repo->has_info_packs = FUNC31("objects/info/packs");
	if (repo->has_info_refs) {
		info_ref_lock = FUNC18("info/refs", LOCK_TIME);
		if (info_ref_lock)
			repo->can_update_info_refs = 1;
		else {
			FUNC6("cannot lock existing info/refs");
			rc = 1;
			goto cleanup;
		}
	}
	if (repo->has_info_packs)
		FUNC7();

	/* Get a list of all local and remote heads to validate refspecs */
	local_refs = FUNC13();
	FUNC9(stderr, "Fetching remote heads...\n");
	FUNC11();
	FUNC33();

	/* Remove a remote branch if -d or -D was specified */
	if (delete_branch) {
		const char *branch = rs.items[i].src;
		if (FUNC4(branch, force_delete) == -1) {
			FUNC9(stderr, "Unable to delete remote branch %s\n",
				branch);
			if (helper_status)
				FUNC27("error %s cannot remove\n", branch);
		}
		goto cleanup;
	}

	/* match them up */
	if (FUNC21(local_refs, &remote_refs, &rs, push_all)) {
		rc = -1;
		goto cleanup;
	}
	if (!remote_refs) {
		FUNC9(stderr, "No refs in common and none specified; doing nothing.\n");
		if (helper_status)
			FUNC27("error null no match\n");
		rc = 0;
		goto cleanup;
	}

	new_refs = 0;
	for (ref = remote_refs; ref; ref = ref->next) {
		struct argv_array commit_argv = ARGV_ARRAY_INIT;

		if (!ref->peer_ref)
			continue;

		if (FUNC17(&ref->peer_ref->new_oid)) {
			if (FUNC4(ref->name, 1) == -1) {
				FUNC6("Could not remove %s", ref->name);
				if (helper_status)
					FUNC27("error %s cannot remove\n", ref->name);
				rc = -4;
			}
			else if (helper_status)
				FUNC27("ok %s\n", ref->name);
			new_refs++;
			continue;
		}

		if (FUNC25(&ref->old_oid, &ref->peer_ref->new_oid)) {
			if (push_verbosely)
				FUNC9(stderr, "'%s': up-to-date\n", ref->name);
			if (helper_status)
				FUNC27("ok %s up to date\n", ref->name);
			continue;
		}

		if (!force_all &&
		    !FUNC17(&ref->old_oid) &&
		    !ref->force) {
			if (!FUNC14(&ref->old_oid) ||
			    !FUNC28(&ref->peer_ref->new_oid,
				       &ref->old_oid)) {
				/*
				 * We do not have the remote ref, or
				 * we know that the remote ref is not
				 * an ancestor of what we are trying to
				 * push.  Either way this can be losing
				 * commits at the remote end and likely
				 * we were not up to date to begin with.
				 */
				FUNC6("remote '%s' is not an ancestor of\n"
				      "local '%s'.\n"
				      "Maybe you are not up-to-date and "
				      "need to pull first?",
				      ref->name,
				      ref->peer_ref->name);
				if (helper_status)
					FUNC27("error %s non-fast forward\n", ref->name);
				rc = -2;
				continue;
			}
		}
		FUNC24(&ref->new_oid, &ref->peer_ref->new_oid);
		new_refs++;

		FUNC9(stderr, "updating '%s'", ref->name);
		if (FUNC39(ref->name, ref->peer_ref->name))
			FUNC9(stderr, " using '%s'", ref->peer_ref->name);
		FUNC9(stderr, "\n  from %s\n  to   %s\n",
			FUNC23(&ref->old_oid), FUNC23(&ref->new_oid));
		if (dry_run) {
			if (helper_status)
				FUNC27("ok %s\n", ref->name);
			continue;
		}

		/* Lock remote branch ref */
		ref_lock = FUNC18(ref->name, LOCK_TIME);
		if (ref_lock == NULL) {
			FUNC9(stderr, "Unable to lock remote branch %s\n",
				ref->name);
			if (helper_status)
				FUNC27("error %s lock error\n", ref->name);
			rc = 1;
			continue;
		}

		/* Set up revision info for this refspec */
		FUNC1(&commit_argv, ""); /* ignored */
		FUNC1(&commit_argv, "--objects");
		FUNC1(&commit_argv, FUNC23(&ref->new_oid));
		if (!push_all && !FUNC17(&ref->old_oid))
			FUNC2(&commit_argv, "^%s",
					 FUNC23(&ref->old_oid));
		FUNC32(the_repository, &revs, FUNC34());
		FUNC35(commit_argv.argc, commit_argv.argv, &revs, NULL);
		revs.edge_hint = 0; /* just in case */

		/* Generate a list of objects that need to be pushed */
		pushing = 0;
		if (FUNC26(&revs))
			FUNC5("revision walk setup failed");
		FUNC20(&revs, NULL, 0);
		objects_to_send = FUNC12(&revs, ref_lock);
		FUNC8();

		/* Push missing objects to remote, this would be a
		   convenient time to pack them first if appropriate. */
		pushing = 1;
		if (objects_to_send)
			FUNC9(stderr, "    sending %d objects\n",
				objects_to_send);

		FUNC33();

		/* Update the remote branch if all went well */
		if (aborted || !FUNC43(&ref->new_oid, ref_lock))
			rc = 1;

		if (!rc)
			FUNC9(stderr, "    done\n");
		if (helper_status)
			FUNC27("%s %s\n", !rc ? "ok" : "error", ref->name);
		FUNC42(ref_lock);
		FUNC3();
		FUNC0(&commit_argv);
	}

	/* Update remote server info if appropriate */
	if (repo->has_info_refs && new_refs) {
		if (info_ref_lock && repo->can_update_info_refs) {
			FUNC9(stderr, "Updating remote server info\n");
			if (!dry_run)
				FUNC44(info_ref_lock);
		} else {
			FUNC9(stderr, "Unable to update server info\n");
		}
	}

 cleanup:
	if (info_ref_lock)
		FUNC42(info_ref_lock);
	FUNC10(repo);

	FUNC15();

	request = request_queue_head;
	while (request != NULL) {
		next_request = request->next;
		FUNC30(request);
		request = next_request;
	}

	return rc;
}