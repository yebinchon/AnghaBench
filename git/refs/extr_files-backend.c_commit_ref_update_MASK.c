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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_lock {char* ref_name; int /*<<< orphan*/  old_oid; } ;
struct object_id {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int REF_ISSYMREF ; 
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct files_ref_store*) ; 
 scalar_t__ FUNC1 (struct ref_lock*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct files_ref_store*,char*) ; 
 scalar_t__ FUNC4 (struct files_ref_store*,char*,int /*<<< orphan*/ *,struct object_id const*,char const*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,char*,...) ; 
 char* FUNC8 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ref_lock*) ; 

__attribute__((used)) static int FUNC12(struct files_ref_store *refs,
			     struct ref_lock *lock,
			     const struct object_id *oid, const char *logmsg,
			     struct strbuf *err)
{
	FUNC3(refs, "commit_ref_update");

	FUNC0(refs);
	if (FUNC4(refs, lock->ref_name,
				&lock->old_oid, oid,
				logmsg, 0, err)) {
		char *old_msg = FUNC8(err, NULL);
		FUNC7(err, "cannot update the ref '%s': %s",
			    lock->ref_name, old_msg);
		FUNC5(old_msg);
		FUNC11(lock);
		return -1;
	}

	if (FUNC10(lock->ref_name, "HEAD") != 0) {
		/*
		 * Special hack: If a branch is updated directly and HEAD
		 * points to it (may happen on the remote side of a push
		 * for example) then logically the HEAD reflog should be
		 * updated too.
		 * A generic solution implies reverse symref information,
		 * but finding all symrefs pointing to the given branch
		 * would be rather costly for this rare event (the direct
		 * update of a branch) to be worth it.  So let's cheat and
		 * check with HEAD only which should cover 99% of all usage
		 * scenarios (even 100% of the default ones).
		 */
		int head_flag;
		const char *head_ref;

		head_ref = FUNC6(&refs->base, "HEAD",
						   RESOLVE_REF_READING,
						   NULL, &head_flag);
		if (head_ref && (head_flag & REF_ISSYMREF) &&
		    !FUNC10(head_ref, lock->ref_name)) {
			struct strbuf log_err = STRBUF_INIT;
			if (FUNC4(refs, "HEAD",
						&lock->old_oid, oid,
						logmsg, 0, &log_err)) {
				FUNC2("%s", log_err.buf);
				FUNC9(&log_err);
			}
		}
	}

	if (FUNC1(lock)) {
		FUNC7(err, "couldn't set '%s'", lock->ref_name);
		FUNC11(lock);
		return -1;
	}

	FUNC11(lock);
	return 0;
}