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
struct TYPE_2__ {int (* transaction_prepare ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GIT_QUARANTINE_ENVIRONMENT ; 
#define  REF_TRANSACTION_CLOSED 130 
#define  REF_TRANSACTION_OPEN 129 
#define  REF_TRANSACTION_PREPARED 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ref_store*,struct ref_transaction*,struct strbuf*) ; 

int FUNC5(struct ref_transaction *transaction,
			    struct strbuf *err)
{
	struct ref_store *refs = transaction->ref_store;

	switch (transaction->state) {
	case REF_TRANSACTION_OPEN:
		/* Good. */
		break;
	case REF_TRANSACTION_PREPARED:
		FUNC0("prepare called twice on reference transaction");
		break;
	case REF_TRANSACTION_CLOSED:
		FUNC0("prepare called on a closed reference transaction");
		break;
	default:
		FUNC0("unexpected reference transaction state");
		break;
	}

	if (FUNC2(GIT_QUARANTINE_ENVIRONMENT)) {
		FUNC3(err,
			      FUNC1("ref updates forbidden inside quarantine environment"));
		return -1;
	}

	return refs->be->transaction_prepare(refs, transaction, err);
}