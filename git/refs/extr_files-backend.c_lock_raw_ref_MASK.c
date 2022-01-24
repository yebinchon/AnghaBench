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
struct strbuf {char const* buf; } ;
struct ref_lock {int /*<<< orphan*/  old_oid; int /*<<< orphan*/  lk; int /*<<< orphan*/  ref_name; } ;
struct files_ref_store {int /*<<< orphan*/ * packed_ref_store; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOCK_NO_DEREF ; 
 unsigned int REF_ISBROKEN ; 
 int /*<<< orphan*/  REMOVE_DIR_EMPTY_ONLY ; 
#define  SCLD_EXISTS 130 
#define  SCLD_OK 129 
#define  SCLD_VANISHED 128 
 struct strbuf STRBUF_INIT ; 
 int TRANSACTION_GENERIC_ERROR ; 
 int TRANSACTION_NAME_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,struct strbuf*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct files_ref_store*,struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,struct string_list const*,struct string_list const*,struct strbuf*) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 char const* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char const*,scalar_t__,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct ref_lock*) ; 
 struct ref_lock* FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17(struct files_ref_store *refs,
			const char *refname, int mustexist,
			const struct string_list *extras,
			const struct string_list *skip,
			struct ref_lock **lock_p,
			struct strbuf *referent,
			unsigned int *type,
			struct strbuf *err)
{
	struct ref_lock *lock;
	struct strbuf ref_file = STRBUF_INIT;
	int attempts_remaining = 3;
	int ret = TRANSACTION_GENERIC_ERROR;

	FUNC0(err);
	FUNC1(refs, "lock_raw_ref");

	*type = 0;

	/* First lock the file so it can't change out from under us. */

	*lock_p = lock = FUNC15(1, sizeof(*lock));

	lock->ref_name = FUNC16(refname);
	FUNC3(refs, &ref_file, refname);

retry:
	switch (FUNC8(ref_file.buf)) {
	case SCLD_OK:
		break; /* success */
	case SCLD_EXISTS:
		/*
		 * Suppose refname is "refs/foo/bar". We just failed
		 * to create the containing directory, "refs/foo",
		 * because there was a non-directory in the way. This
		 * indicates a D/F conflict, probably because of
		 * another reference such as "refs/foo". There is no
		 * reason to expect this error to be transitory.
		 */
		if (FUNC6(&refs->base, refname,
						  extras, skip, err)) {
			if (mustexist) {
				/*
				 * To the user the relevant error is
				 * that the "mustexist" reference is
				 * missing:
				 */
				FUNC11(err);
				FUNC9(err, "unable to resolve reference '%s'",
					    refname);
			} else {
				/*
				 * The error message set by
				 * refs_verify_refname_available() is
				 * OK.
				 */
				ret = TRANSACTION_NAME_CONFLICT;
			}
		} else {
			/*
			 * The file that is in the way isn't a loose
			 * reference. Report it as a low-level
			 * failure.
			 */
			FUNC9(err, "unable to create lock file %s.lock; "
				    "non-directory in the way",
				    ref_file.buf);
		}
		goto error_return;
	case SCLD_VANISHED:
		/* Maybe another process was tidying up. Try again. */
		if (--attempts_remaining > 0)
			goto retry;
		/* fall through */
	default:
		FUNC9(err, "unable to create directory for %s",
			    ref_file.buf);
		goto error_return;
	}

	if (FUNC5(
			    &lock->lk, ref_file.buf, LOCK_NO_DEREF,
			    FUNC4()) < 0) {
		if (errno == ENOENT && --attempts_remaining > 0) {
			/*
			 * Maybe somebody just deleted one of the
			 * directories leading to ref_file.  Try
			 * again:
			 */
			goto retry;
		} else {
			FUNC13(ref_file.buf, errno, err);
			goto error_return;
		}
	}

	/*
	 * Now we hold the lock and can read the reference without
	 * fear that its value will change.
	 */

	if (FUNC2(&refs->base, refname,
			       &lock->old_oid, referent, type)) {
		if (errno == ENOENT) {
			if (mustexist) {
				/* Garden variety missing reference. */
				FUNC9(err, "unable to resolve reference '%s'",
					    refname);
				goto error_return;
			} else {
				/*
				 * Reference is missing, but that's OK. We
				 * know that there is not a conflict with
				 * another loose reference because
				 * (supposing that we are trying to lock
				 * reference "refs/foo/bar"):
				 *
				 * - We were successfully able to create
				 *   the lockfile refs/foo/bar.lock, so we
				 *   know there cannot be a loose reference
				 *   named "refs/foo".
				 *
				 * - We got ENOENT and not EISDIR, so we
				 *   know that there cannot be a loose
				 *   reference named "refs/foo/bar/baz".
				 */
			}
		} else if (errno == EISDIR) {
			/*
			 * There is a directory in the way. It might have
			 * contained references that have been deleted. If
			 * we don't require that the reference already
			 * exists, try to remove the directory so that it
			 * doesn't cause trouble when we want to rename the
			 * lockfile into place later.
			 */
			if (mustexist) {
				/* Garden variety missing reference. */
				FUNC9(err, "unable to resolve reference '%s'",
					    refname);
				goto error_return;
			} else if (FUNC7(&ref_file,
							  REMOVE_DIR_EMPTY_ONLY)) {
				if (FUNC6(
						    &refs->base, refname,
						    extras, skip, err)) {
					/*
					 * The error message set by
					 * verify_refname_available() is OK.
					 */
					ret = TRANSACTION_NAME_CONFLICT;
					goto error_return;
				} else {
					/*
					 * We can't delete the directory,
					 * but we also don't know of any
					 * references that it should
					 * contain.
					 */
					FUNC9(err, "there is a non-empty directory '%s' "
						    "blocking reference '%s'",
						    ref_file.buf, refname);
					goto error_return;
				}
			}
		} else if (errno == EINVAL && (*type & REF_ISBROKEN)) {
			FUNC9(err, "unable to resolve reference '%s': "
				    "reference broken", refname);
			goto error_return;
		} else {
			FUNC9(err, "unable to resolve reference '%s': %s",
				    refname, FUNC12(errno));
			goto error_return;
		}

		/*
		 * If the ref did not exist and we are creating it,
		 * make sure there is no existing packed ref that
		 * conflicts with refname:
		 */
		if (FUNC6(
				    refs->packed_ref_store, refname,
				    extras, skip, err))
			goto error_return;
	}

	ret = 0;
	goto out;

error_return:
	FUNC14(lock);
	*lock_p = NULL;

out:
	FUNC10(&ref_file);
	return ret;
}