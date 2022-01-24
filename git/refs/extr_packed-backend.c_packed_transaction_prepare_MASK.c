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
struct string_list_item {struct ref_update* util; } ;
struct strbuf {int dummy; } ;
struct ref_update {int /*<<< orphan*/  refname; } ;
struct ref_transaction {size_t nr; int /*<<< orphan*/  state; struct ref_update** updates; struct packed_transaction_backend_data* backend_data; } ;
struct ref_store {int dummy; } ;
struct packed_transaction_backend_data {int own_lock; int /*<<< orphan*/  updates; } ;
struct packed_ref_store {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int REF_STORE_ODB ; 
 int REF_STORE_READ ; 
 int REF_STORE_WRITE ; 
 int /*<<< orphan*/  REF_TRANSACTION_PREPARED ; 
 int TRANSACTION_GENERIC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct packed_ref_store* FUNC1 (struct ref_store*,int,char*) ; 
 scalar_t__ FUNC2 (struct ref_store*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct packed_ref_store*,struct ref_transaction*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct strbuf*) ; 
 struct string_list_item* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct packed_ref_store*,int /*<<< orphan*/ *,struct strbuf*) ; 
 struct packed_transaction_backend_data* FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct ref_store *ref_store,
				      struct ref_transaction *transaction,
				      struct strbuf *err)
{
	struct packed_ref_store *refs = FUNC1(
			ref_store,
			REF_STORE_READ | REF_STORE_WRITE | REF_STORE_ODB,
			"ref_transaction_prepare");
	struct packed_transaction_backend_data *data;
	size_t i;
	int ret = TRANSACTION_GENERIC_ERROR;

	/*
	 * Note that we *don't* skip transactions with zero updates,
	 * because such a transaction might be executed for the side
	 * effect of ensuring that all of the references are peeled or
	 * ensuring that the `packed-refs` file is sorted. If the
	 * caller wants to optimize away empty transactions, it should
	 * do so itself.
	 */

	data = FUNC9(1, sizeof(*data));
	FUNC6(&data->updates, 0);

	transaction->backend_data = data;

	/*
	 * Stick the updates in a string list by refname so that we
	 * can sort them:
	 */
	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];
		struct string_list_item *item =
			FUNC5(&data->updates, update->refname);

		/* Store a pointer to update in item->util: */
		item->util = update;
	}
	FUNC7(&data->updates);

	if (FUNC4(&data->updates, err))
		goto failure;

	if (!FUNC0(&refs->lock)) {
		if (FUNC2(ref_store, 0, err))
			goto failure;
		data->own_lock = 1;
	}

	if (FUNC8(refs, &data->updates, err))
		goto failure;

	transaction->state = REF_TRANSACTION_PREPARED;
	return 0;

failure:
	FUNC3(refs, transaction);
	return ret;
}