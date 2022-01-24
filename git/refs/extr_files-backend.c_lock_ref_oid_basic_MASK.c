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
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct ref_lock {int /*<<< orphan*/  lk; int /*<<< orphan*/  ref_name; struct object_id const old_oid; } ;
struct files_ref_store {int /*<<< orphan*/  base; int /*<<< orphan*/ * packed_ref_store; } ;

/* Variables and functions */
 int EISDIR ; 
 int ENOTDIR ; 
 unsigned int REF_DELETING ; 
 int RESOLVE_REF_ALLOW_BAD_NAME ; 
 int RESOLVE_REF_NO_RECURSE ; 
 int RESOLVE_REF_READING ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  create_reflock ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct files_ref_store*,struct strbuf*,char const*) ; 
 scalar_t__ FUNC3 (struct object_id const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,struct object_id const*,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,struct string_list const*,struct string_list const*,struct strbuf*) ; 
 scalar_t__ FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ref_lock*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct ref_lock*,struct object_id const*,int,struct strbuf*) ; 
 struct ref_lock* FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 

__attribute__((used)) static struct ref_lock *FUNC16(struct files_ref_store *refs,
					   const char *refname,
					   const struct object_id *old_oid,
					   const struct string_list *extras,
					   const struct string_list *skip,
					   unsigned int flags, int *type,
					   struct strbuf *err)
{
	struct strbuf ref_file = STRBUF_INIT;
	struct ref_lock *lock;
	int last_errno = 0;
	int mustexist = (old_oid && !FUNC3(old_oid));
	int resolve_flags = RESOLVE_REF_NO_RECURSE;
	int resolved;

	FUNC1(refs, "lock_ref_oid_basic");
	FUNC0(err);

	lock = FUNC14(1, sizeof(struct ref_lock));

	if (mustexist)
		resolve_flags |= RESOLVE_REF_READING;
	if (flags & REF_DELETING)
		resolve_flags |= RESOLVE_REF_ALLOW_BAD_NAME;

	FUNC2(refs, &ref_file, refname);
	resolved = !!FUNC5(&refs->base,
					     refname, resolve_flags,
					     &lock->old_oid, type);
	if (!resolved && errno == EISDIR) {
		/*
		 * we are trying to lock foo but we used to
		 * have foo/bar which now does not exist;
		 * it is normal for the empty directory 'foo'
		 * to remain.
		 */
		if (FUNC7(&ref_file)) {
			last_errno = errno;
			if (!FUNC6(
					    &refs->base,
					    refname, extras, skip, err))
				FUNC8(err, "there are still refs under '%s'",
					    refname);
			goto error_return;
		}
		resolved = !!FUNC5(&refs->base,
						     refname, resolve_flags,
						     &lock->old_oid, type);
	}
	if (!resolved) {
		last_errno = errno;
		if (last_errno != ENOTDIR ||
		    !FUNC6(&refs->base, refname,
						   extras, skip, err))
			FUNC8(err, "unable to resolve reference '%s': %s",
				    refname, FUNC10(last_errno));

		goto error_return;
	}

	/*
	 * If the ref did not exist and we are creating it, make sure
	 * there is no existing packed ref whose name begins with our
	 * refname, nor a packed ref whose name is a proper prefix of
	 * our refname.
	 */
	if (FUNC3(&lock->old_oid) &&
	    FUNC6(refs->packed_ref_store, refname,
					  extras, skip, err)) {
		last_errno = ENOTDIR;
		goto error_return;
	}

	lock->ref_name = FUNC15(refname);

	if (FUNC4(ref_file.buf, create_reflock, &lock->lk)) {
		last_errno = errno;
		FUNC11(ref_file.buf, errno, err);
		goto error_return;
	}

	if (FUNC13(&refs->base, lock, old_oid, mustexist, err)) {
		last_errno = errno;
		goto error_return;
	}
	goto out;

 error_return:
	FUNC12(lock);
	lock = NULL;

 out:
	FUNC9(&ref_file);
	errno = last_errno;
	return lock;
}