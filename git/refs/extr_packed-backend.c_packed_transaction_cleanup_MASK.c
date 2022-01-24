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
struct ref_transaction {int /*<<< orphan*/  state; struct packed_transaction_backend_data* backend_data; } ;
struct packed_transaction_backend_data {scalar_t__ own_lock; int /*<<< orphan*/  updates; } ;
struct packed_ref_store {int /*<<< orphan*/  base; int /*<<< orphan*/  lock; int /*<<< orphan*/  tempfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_TRANSACTION_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_transaction_backend_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct packed_ref_store *refs,
				       struct ref_transaction *transaction)
{
	struct packed_transaction_backend_data *data = transaction->backend_data;

	if (data) {
		FUNC5(&data->updates, 0);

		if (FUNC3(refs->tempfile))
			FUNC0(&refs->tempfile);

		if (data->own_lock && FUNC2(&refs->lock)) {
			FUNC4(&refs->base);
			data->own_lock = 0;
		}

		FUNC1(data);
		transaction->backend_data = NULL;
	}

	transaction->state = REF_TRANSACTION_CLOSED;
}