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
struct ref_update {int flags; int type; int /*<<< orphan*/  refname; struct ref_lock* backend_data; int /*<<< orphan*/  msg; int /*<<< orphan*/  new_oid; } ;
struct ref_transaction {size_t nr; struct ref_update** updates; struct files_transaction_backend_data* backend_data; int /*<<< orphan*/  state; } ;
struct ref_store {int dummy; } ;
struct ref_lock {int /*<<< orphan*/  ref_name; int /*<<< orphan*/  old_oid; } ;
struct files_transaction_backend_data {struct ref_transaction* packed_transaction; } ;
struct files_ref_store {int dummy; } ;

/* Variables and functions */
 int REF_DELETED_LOOSE ; 
 int REF_DELETING ; 
 int REF_ISPACKED ; 
 int REF_ISSYMREF ; 
 int REF_IS_PRUNING ; 
 int REF_LOG_ONLY ; 
 int REF_NEEDS_COMMIT ; 
 int /*<<< orphan*/  REF_TRANSACTION_CLOSED ; 
 int /*<<< orphan*/  REMOVE_EMPTY_PARENTS_REF ; 
 int /*<<< orphan*/  REMOVE_EMPTY_PARENTS_REFLOG ; 
 struct strbuf STRBUF_INIT ; 
 int TRANSACTION_GENERIC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct files_ref_store*) ; 
 scalar_t__ FUNC2 (struct ref_lock*) ; 
 struct files_ref_store* FUNC3 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct files_ref_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct files_ref_store*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct files_ref_store*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct files_ref_store*,struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 char* FUNC12 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct files_ref_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ref_lock*) ; 

__attribute__((used)) static int FUNC19(struct ref_store *ref_store,
				    struct ref_transaction *transaction,
				    struct strbuf *err)
{
	struct files_ref_store *refs =
		FUNC3(ref_store, 0, "ref_transaction_finish");
	size_t i;
	int ret = 0;
	struct strbuf sb = STRBUF_INIT;
	struct files_transaction_backend_data *backend_data;
	struct ref_transaction *packed_transaction;


	FUNC0(err);

	if (!transaction->nr) {
		transaction->state = REF_TRANSACTION_CLOSED;
		return 0;
	}

	backend_data = transaction->backend_data;
	packed_transaction = backend_data->packed_transaction;

	/* Perform updates first so live commits remain referenced */
	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];
		struct ref_lock *lock = update->backend_data;

		if (update->flags & REF_NEEDS_COMMIT ||
		    update->flags & REF_LOG_ONLY) {
			if (FUNC4(refs,
						lock->ref_name,
						&lock->old_oid,
						&update->new_oid,
						update->msg, update->flags,
						err)) {
				char *old_msg = FUNC12(err, NULL);

				FUNC11(err, "cannot update the ref '%s': %s",
					    lock->ref_name, old_msg);
				FUNC8(old_msg);
				FUNC18(lock);
				update->backend_data = NULL;
				ret = TRANSACTION_GENERIC_ERROR;
				goto cleanup;
			}
		}
		if (update->flags & REF_NEEDS_COMMIT) {
			FUNC1(refs);
			if (FUNC2(lock)) {
				FUNC11(err, "couldn't set '%s'", lock->ref_name);
				FUNC18(lock);
				update->backend_data = NULL;
				ret = TRANSACTION_GENERIC_ERROR;
				goto cleanup;
			}
		}
	}

	/*
	 * Now that updates are safely completed, we can perform
	 * deletes. First delete the reflogs of any references that
	 * will be deleted, since (in the unexpected event of an
	 * error) leaving a reference without a reflog is less bad
	 * than leaving a reflog without a reference (the latter is a
	 * mildly invalid repository state):
	 */
	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];
		if (update->flags & REF_DELETING &&
		    !(update->flags & REF_LOG_ONLY) &&
		    !(update->flags & REF_IS_PRUNING)) {
			FUNC14(&sb);
			FUNC6(refs, &sb, update->refname);
			if (!FUNC17(sb.buf))
				FUNC15(refs, update->refname,
							 REMOVE_EMPTY_PARENTS_REFLOG);
		}
	}

	/*
	 * Perform deletes now that updates are safely completed.
	 *
	 * First delete any packed versions of the references, while
	 * retaining the packed-refs lock:
	 */
	if (packed_transaction) {
		ret = FUNC9(packed_transaction, err);
		FUNC10(packed_transaction);
		packed_transaction = NULL;
		backend_data->packed_transaction = NULL;
		if (ret)
			goto cleanup;
	}

	/* Now delete the loose versions of the references: */
	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];
		struct ref_lock *lock = update->backend_data;

		if (update->flags & REF_DELETING &&
		    !(update->flags & REF_LOG_ONLY)) {
			if (!(update->type & REF_ISPACKED) ||
			    update->type & REF_ISSYMREF) {
				/* It is a loose reference. */
				FUNC14(&sb);
				FUNC5(refs, &sb, lock->ref_name);
				if (FUNC16(sb.buf, err)) {
					ret = TRANSACTION_GENERIC_ERROR;
					goto cleanup;
				}
				update->flags |= REF_DELETED_LOOSE;
			}
		}
	}

	FUNC1(refs);

cleanup:
	FUNC7(refs, transaction);

	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];

		if (update->flags & REF_DELETED_LOOSE) {
			/*
			 * The loose reference was deleted. Delete any
			 * empty parent directories. (Note that this
			 * can only work because we have already
			 * removed the lockfile.)
			 */
			FUNC15(refs, update->refname,
						 REMOVE_EMPTY_PARENTS_REF);
		}
	}

	FUNC13(&sb);
	return ret;
}