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
struct strbuf {int dummy; } ;
struct ref_update {int flags; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  refname; } ;
struct ref_transaction {scalar_t__ state; size_t nr; struct ref_update** updates; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  packed_ref_store; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int REF_HAVE_OLD ; 
 int /*<<< orphan*/  REF_STORE_WRITE ; 
 scalar_t__ REF_TRANSACTION_CLOSED ; 
 scalar_t__ REF_TRANSACTION_OPEN ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int TRANSACTION_GENERIC_ERROR ; 
 int TRANSACTION_NAME_CONFLICT ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 struct files_ref_store* FUNC2 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ref_present ; 
 struct ref_transaction* FUNC7 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct ref_transaction*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ref_transaction*) ; 
 scalar_t__ FUNC10 (struct string_list*,struct strbuf*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct string_list*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct string_list*,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct string_list*) ; 

__attribute__((used)) static int FUNC16(struct ref_store *ref_store,
					    struct ref_transaction *transaction,
					    struct strbuf *err)
{
	struct files_ref_store *refs =
		FUNC2(ref_store, REF_STORE_WRITE,
			       "initial_ref_transaction_commit");
	size_t i;
	int ret = 0;
	struct string_list affected_refnames = STRING_LIST_INIT_NODUP;
	struct ref_transaction *packed_transaction = NULL;

	FUNC1(err);

	if (transaction->state != REF_TRANSACTION_OPEN)
		FUNC0("commit called for transaction that is not open");

	/* Fail if a refname appears more than once in the transaction: */
	for (i = 0; i < transaction->nr; i++)
		FUNC13(&affected_refnames,
				   transaction->updates[i]->refname);
	FUNC15(&affected_refnames);
	if (FUNC10(&affected_refnames, err)) {
		ret = TRANSACTION_GENERIC_ERROR;
		goto cleanup;
	}

	/*
	 * It's really undefined to call this function in an active
	 * repository or when there are existing references: we are
	 * only locking and changing packed-refs, so (1) any
	 * simultaneous processes might try to change a reference at
	 * the same time we do, and (2) any existing loose versions of
	 * the references that we are setting would have precedence
	 * over our values. But some remote helpers create the remote
	 * "HEAD" and "master" branches before calling this function,
	 * so here we really only check that none of the references
	 * that we are creating already exists.
	 */
	if (FUNC11(&refs->base, ref_present,
				 &affected_refnames))
		FUNC0("initial ref transaction called with existing refs");

	packed_transaction = FUNC7(refs->packed_ref_store, err);
	if (!packed_transaction) {
		ret = TRANSACTION_GENERIC_ERROR;
		goto cleanup;
	}

	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];

		if ((update->flags & REF_HAVE_OLD) &&
		    !FUNC4(&update->old_oid))
			FUNC0("initial ref transaction with old_sha1 set");
		if (FUNC12(&refs->base, update->refname,
						  &affected_refnames, NULL,
						  err)) {
			ret = TRANSACTION_NAME_CONFLICT;
			goto cleanup;
		}

		/*
		 * Add a reference creation for this reference to the
		 * packed-refs transaction:
		 */
		FUNC8(packed_transaction, update->refname,
					   update->flags & ~REF_HAVE_OLD,
					   &update->new_oid, &update->old_oid,
					   NULL);
	}

	if (FUNC5(refs->packed_ref_store, 0, err)) {
		ret = TRANSACTION_GENERIC_ERROR;
		goto cleanup;
	}

	if (FUNC3(packed_transaction, err)) {
		ret = TRANSACTION_GENERIC_ERROR;
	}

	FUNC6(refs->packed_ref_store);
cleanup:
	if (packed_transaction)
		FUNC9(packed_transaction);
	transaction->state = REF_TRANSACTION_CLOSED;
	FUNC14(&affected_refnames, 0);
	return ret;
}