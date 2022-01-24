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
struct ref_update {int flags; int type; int /*<<< orphan*/  refname; struct ref_lock* backend_data; int /*<<< orphan*/  new_oid; struct ref_update* parent_update; int /*<<< orphan*/  old_oid; } ;
struct ref_transaction {int dummy; } ;
struct ref_lock {int /*<<< orphan*/  old_oid; } ;
struct files_ref_store {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int REF_DELETING ; 
 int REF_HAVE_NEW ; 
 int REF_HAVE_OLD ; 
 int REF_ISSYMREF ; 
 int REF_LOG_ONLY ; 
 int REF_NEEDS_COMMIT ; 
 int REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 int TRANSACTION_GENERIC_ERROR ; 
 scalar_t__ FUNC0 (struct ref_update*,int /*<<< orphan*/ *,struct strbuf*) ; 
 scalar_t__ FUNC1 (struct ref_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct files_ref_store*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct files_ref_store*,int /*<<< orphan*/ ,int,struct string_list*,int /*<<< orphan*/ *,struct ref_lock**,struct strbuf*,int*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ref_update*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ref_update*,struct ref_transaction*,char const*,struct string_list*,struct strbuf*) ; 
 int FUNC11 (struct ref_update*,int /*<<< orphan*/ ,struct ref_transaction*,struct string_list*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 char* FUNC13 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 scalar_t__ FUNC15 (struct ref_lock*,int /*<<< orphan*/ *,struct strbuf*) ; 

__attribute__((used)) static int FUNC16(struct files_ref_store *refs,
			       struct ref_update *update,
			       struct ref_transaction *transaction,
			       const char *head_ref,
			       struct string_list *affected_refnames,
			       struct strbuf *err)
{
	struct strbuf referent = STRBUF_INIT;
	int mustexist = (update->flags & REF_HAVE_OLD) &&
		!FUNC4(&update->old_oid);
	int ret = 0;
	struct ref_lock *lock;

	FUNC2(refs, "lock_ref_for_update");

	if ((update->flags & REF_HAVE_NEW) && FUNC4(&update->new_oid))
		update->flags |= REF_DELETING;

	if (head_ref) {
		ret = FUNC10(update, transaction, head_ref,
					affected_refnames, err);
		if (ret)
			goto out;
	}

	ret = FUNC5(refs, update->refname, mustexist,
			   affected_refnames, NULL,
			   &lock, &referent,
			   &update->type, err);
	if (ret) {
		char *reason;

		reason = FUNC13(err, NULL);
		FUNC12(err, "cannot lock ref '%s': %s",
			    FUNC8(update), reason);
		FUNC3(reason);
		goto out;
	}

	update->backend_data = lock;

	if (update->type & REF_ISSYMREF) {
		if (update->flags & REF_NO_DEREF) {
			/*
			 * We won't be reading the referent as part of
			 * the transaction, so we have to read it here
			 * to record and possibly check old_oid:
			 */
			if (FUNC9(&refs->base,
					       referent.buf, 0,
					       &lock->old_oid, NULL)) {
				if (update->flags & REF_HAVE_OLD) {
					FUNC12(err, "cannot lock ref '%s': "
						    "error reading reference",
						    FUNC8(update));
					ret = TRANSACTION_GENERIC_ERROR;
					goto out;
				}
			} else if (FUNC0(update, &lock->old_oid, err)) {
				ret = TRANSACTION_GENERIC_ERROR;
				goto out;
			}
		} else {
			/*
			 * Create a new update for the reference this
			 * symref is pointing at. Also, we will record
			 * and verify old_oid for this update as part
			 * of processing the split-off update, so we
			 * don't have to do it here.
			 */
			ret = FUNC11(update,
						  referent.buf, transaction,
						  affected_refnames, err);
			if (ret)
				goto out;
		}
	} else {
		struct ref_update *parent_update;

		if (FUNC0(update, &lock->old_oid, err)) {
			ret = TRANSACTION_GENERIC_ERROR;
			goto out;
		}

		/*
		 * If this update is happening indirectly because of a
		 * symref update, record the old OID in the parent
		 * update:
		 */
		for (parent_update = update->parent_update;
		     parent_update;
		     parent_update = parent_update->parent_update) {
			struct ref_lock *parent_lock = parent_update->backend_data;
			FUNC6(&parent_lock->old_oid, &lock->old_oid);
		}
	}

	if ((update->flags & REF_HAVE_NEW) &&
	    !(update->flags & REF_DELETING) &&
	    !(update->flags & REF_LOG_ONLY)) {
		if (!(update->type & REF_ISSYMREF) &&
		    FUNC7(&lock->old_oid, &update->new_oid)) {
			/*
			 * The reference already has the desired
			 * value, so we don't need to write it.
			 */
		} else if (FUNC15(lock, &update->new_oid,
						 err)) {
			char *write_err = FUNC13(err, NULL);

			/*
			 * The lock was freed upon failure of
			 * write_ref_to_lockfile():
			 */
			update->backend_data = NULL;
			FUNC12(err,
				    "cannot update ref '%s': %s",
				    update->refname, write_err);
			FUNC3(write_err);
			ret = TRANSACTION_GENERIC_ERROR;
			goto out;
		} else {
			update->flags |= REF_NEEDS_COMMIT;
		}
	}
	if (!(update->flags & REF_NEEDS_COMMIT)) {
		/*
		 * We didn't call write_ref_to_lockfile(), so
		 * the lockfile is still open. Close it to
		 * free up the file descriptor:
		 */
		if (FUNC1(lock)) {
			FUNC12(err, "couldn't close '%s.lock'",
				    update->refname);
			ret = TRANSACTION_GENERIC_ERROR;
			goto out;
		}
	}

out:
	FUNC14(&referent);
	return ret;
}