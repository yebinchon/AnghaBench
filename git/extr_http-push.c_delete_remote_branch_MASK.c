#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct slot_results {char* http_code; int /*<<< orphan*/  curl_result; } ;
struct object_id {int dummy; } ;
struct ref {char* name; struct object_id old_oid; struct ref* next; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;
struct TYPE_2__ {char* url; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  DAV_DELETE ; 
 int MAXDEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ dry_run ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct active_request_slot* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 scalar_t__ FUNC7 (struct object_id*) ; 
 scalar_t__ FUNC8 (char*,char const*,int) ; 
 char* FUNC9 (struct object_id*) ; 
 struct ref* remote_refs ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC10 (struct active_request_slot*) ; 
 scalar_t__ FUNC11 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct object_id*,struct ref*) ; 
 char* FUNC15 (char*,char*,char*) ; 

__attribute__((used)) static int FUNC16(const char *pattern, int force)
{
	struct ref *refs = remote_refs;
	struct ref *remote_ref = NULL;
	struct object_id head_oid;
	char *symref = NULL;
	int match;
	int patlen = FUNC13(pattern);
	int i;
	struct active_request_slot *slot;
	struct slot_results results;
	char *url;

	/* Find the remote branch(es) matching the specified branch name */
	for (match = 0; refs; refs = refs->next) {
		char *name = refs->name;
		int namelen = FUNC13(name);
		if (namelen < patlen ||
		    FUNC8(name + namelen - patlen, pattern, patlen))
			continue;
		if (namelen != patlen && name[namelen - patlen - 1] != '/')
			continue;
		match++;
		remote_ref = refs;
	}
	if (match == 0)
		return FUNC1("No remote branch matches %s", pattern);
	if (match != 1)
		return FUNC1("More than one remote branch matches %s",
			     pattern);

	/*
	 * Remote HEAD must be a symref (not exactly foolproof; a remote
	 * symlink to a symref will look like a symref)
	 */
	FUNC2("HEAD", &symref, &head_oid);
	if (!symref)
		return FUNC1("Remote HEAD is not a symref");

	/* Remote branch must not be the remote HEAD */
	for (i = 0; symref && i < MAXDEPTH; i++) {
		if (!FUNC12(remote_ref->name, symref))
			return FUNC1("Remote branch %s is the current HEAD",
				     remote_ref->name);
		FUNC2(symref, &symref, &head_oid);
	}

	/* Run extra sanity checks if delete is not forced */
	if (!force) {
		/* Remote HEAD must resolve to a known object */
		if (symref)
			return FUNC1("Remote HEAD symrefs too deep");
		if (FUNC7(&head_oid))
			return FUNC1("Unable to resolve remote HEAD");
		if (!FUNC6(&head_oid))
			return FUNC1("Remote HEAD resolves to object %s\nwhich does not exist locally, perhaps you need to fetch?", FUNC9(&head_oid));

		/* Remote branch must resolve to a known object */
		if (FUNC7(&remote_ref->old_oid))
			return FUNC1("Unable to resolve remote branch %s",
				     remote_ref->name);
		if (!FUNC6(&remote_ref->old_oid))
			return FUNC1("Remote branch %s resolves to object %s\nwhich does not exist locally, perhaps you need to fetch?", remote_ref->name, FUNC9(&remote_ref->old_oid));

		/* Remote branch must be an ancestor of remote HEAD */
		if (!FUNC14(&head_oid, remote_ref)) {
			return FUNC1("The branch '%s' is not an ancestor "
				     "of your current HEAD.\n"
				     "If you are sure you want to delete it,"
				     " run:\n\t'git http-push -D %s %s'",
				     remote_ref->name, repo->url, pattern);
		}
	}

	/* Send delete request */
	FUNC3(stderr, "Removing remote branch '%s'\n", remote_ref->name);
	if (dry_run)
		return 0;
	url = FUNC15("%s%s", repo->url, remote_ref->name);
	slot = FUNC5();
	slot->results = &results;
	FUNC0(slot->curl, url, DAV_DELETE);
	if (FUNC11(slot)) {
		FUNC10(slot);
		FUNC4(url);
		if (results.curl_result != CURLE_OK)
			return FUNC1("DELETE request failed (%d/%ld)",
				     results.curl_result, results.http_code);
	} else {
		FUNC4(url);
		return FUNC1("Unable to start DELETE request");
	}

	return 0;
}