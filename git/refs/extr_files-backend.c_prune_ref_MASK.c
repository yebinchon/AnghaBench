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
struct ref_to_prune {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
struct files_ref_store {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int REF_HAVE_NEW ; 
 int REF_HAVE_OLD ; 
 int REF_IS_PRUNING ; 
 int REF_NO_DEREF ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 struct ref_transaction* FUNC2 (int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref_transaction*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static void FUNC7(struct files_ref_store *refs, struct ref_to_prune *r)
{
	struct ref_transaction *transaction;
	struct strbuf err = STRBUF_INIT;
	int ret = -1;

	if (FUNC0(r->name, 0))
		return;

	transaction = FUNC2(&refs->base, &err);
	if (!transaction)
		goto cleanup;
	FUNC3(
			transaction, r->name,
			REF_NO_DEREF | REF_HAVE_NEW | REF_HAVE_OLD | REF_IS_PRUNING,
			&null_oid, &r->oid, NULL);
	if (FUNC4(transaction, &err))
		goto cleanup;

	ret = 0;

cleanup:
	if (ret)
		FUNC1("%s", err.buf);
	FUNC6(&err);
	FUNC5(transaction);
	return;
}