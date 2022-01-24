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
struct ref_update {struct ref_lock* backend_data; } ;
struct ref_transaction {size_t nr; int /*<<< orphan*/  state; struct ref_update** updates; struct files_transaction_backend_data* backend_data; } ;
struct ref_lock {int dummy; } ;
struct files_transaction_backend_data {scalar_t__ packed_refs_locked; scalar_t__ packed_transaction; } ;
struct files_ref_store {int /*<<< orphan*/  packed_ref_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TRANSACTION_CLOSED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct files_transaction_backend_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_lock*) ; 

__attribute__((used)) static void FUNC6(struct files_ref_store *refs,
				      struct ref_transaction *transaction)
{
	size_t i;
	struct files_transaction_backend_data *backend_data =
		transaction->backend_data;
	struct strbuf err = STRBUF_INIT;

	for (i = 0; i < transaction->nr; i++) {
		struct ref_update *update = transaction->updates[i];
		struct ref_lock *lock = update->backend_data;

		if (lock) {
			FUNC5(lock);
			update->backend_data = NULL;
		}
	}

	if (backend_data->packed_transaction &&
	    FUNC3(backend_data->packed_transaction, &err)) {
		FUNC0("error aborting transaction: %s", err.buf);
		FUNC4(&err);
	}

	if (backend_data->packed_refs_locked)
		FUNC2(refs->packed_ref_store);

	FUNC1(backend_data);

	transaction->state = REF_TRANSACTION_CLOSED;
}