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
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ REF_TYPE_PSEUDOREF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct ref_store* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ref_transaction* FUNC4 (struct ref_store*,struct strbuf*) ; 
 scalar_t__ FUNC5 (struct ref_transaction*,struct strbuf*) ; 
 scalar_t__ FUNC6 (struct ref_transaction*,char const*,struct object_id const*,unsigned int,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ref_transaction*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC10(struct ref_store *refs, const char *msg,
		    const char *refname,
		    const struct object_id *old_oid,
		    unsigned int flags)
{
	struct ref_transaction *transaction;
	struct strbuf err = STRBUF_INIT;

	if (FUNC8(refname) == REF_TYPE_PSEUDOREF) {
		FUNC0(refs == FUNC3(the_repository));
		return FUNC1(refname, old_oid);
	}

	transaction = FUNC4(refs, &err);
	if (!transaction ||
	    FUNC6(transaction, refname, old_oid,
				   flags, msg, &err) ||
	    FUNC5(transaction, &err)) {
		FUNC2("%s", err.buf);
		FUNC7(transaction);
		FUNC9(&err);
		return 1;
	}
	FUNC7(transaction);
	FUNC9(&err);
	return 0;
}