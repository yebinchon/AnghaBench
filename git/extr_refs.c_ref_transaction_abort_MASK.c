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
struct strbuf {int dummy; } ;
struct ref_transaction {int state; struct ref_store* ref_store; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* transaction_abort ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  REF_TRANSACTION_CLOSED 130 
#define  REF_TRANSACTION_OPEN 129 
#define  REF_TRANSACTION_PREPARED 128 
 int /*<<< orphan*/  FUNC1 (struct ref_transaction*) ; 
 int FUNC2 (struct ref_store*,struct ref_transaction*,struct strbuf*) ; 

int FUNC3(struct ref_transaction *transaction,
			  struct strbuf *err)
{
	struct ref_store *refs = transaction->ref_store;
	int ret = 0;

	switch (transaction->state) {
	case REF_TRANSACTION_OPEN:
		/* No need to abort explicitly. */
		break;
	case REF_TRANSACTION_PREPARED:
		ret = refs->be->transaction_abort(refs, transaction, err);
		break;
	case REF_TRANSACTION_CLOSED:
		FUNC0("abort called on a closed reference transaction");
		break;
	default:
		FUNC0("unexpected reference transaction state");
		break;
	}

	FUNC1(transaction);
	return ret;
}