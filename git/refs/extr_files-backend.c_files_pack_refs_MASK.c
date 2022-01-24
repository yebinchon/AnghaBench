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
struct ref_to_prune {struct ref_to_prune* next; int /*<<< orphan*/  oid; } ;
struct ref_store {int dummy; } ;
struct ref_iterator {int /*<<< orphan*/  oid; int /*<<< orphan*/  refname; int /*<<< orphan*/  flags; } ;
struct files_ref_store {int /*<<< orphan*/  packed_ref_store; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_to_prune*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ITER_DONE ; 
 int ITER_OK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 unsigned int PACK_REFS_PRUNE ; 
 int /*<<< orphan*/  REF_NO_DEREF ; 
 int REF_STORE_ODB ; 
 int REF_STORE_WRITE ; 
 struct strbuf STRBUF_INIT ; 
 struct ref_iterator* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct files_ref_store* FUNC3 (struct ref_store*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct files_ref_store*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct files_ref_store*,struct ref_to_prune**) ; 
 int FUNC9 (struct ref_iterator*) ; 
 struct ref_transaction* FUNC10 (int /*<<< orphan*/ ,struct strbuf*) ; 
 scalar_t__ FUNC11 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct ref_transaction*) ; 
 scalar_t__ FUNC13 (struct ref_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 

__attribute__((used)) static int FUNC16(struct ref_store *ref_store, unsigned int flags)
{
	struct files_ref_store *refs =
		FUNC3(ref_store, REF_STORE_WRITE | REF_STORE_ODB,
			       "pack_refs");
	struct ref_iterator *iter;
	int ok;
	struct ref_to_prune *refs_to_prune = NULL;
	struct strbuf err = STRBUF_INIT;
	struct ref_transaction *transaction;

	transaction = FUNC10(refs->packed_ref_store, &err);
	if (!transaction)
		return -1;

	FUNC6(refs->packed_ref_store, LOCK_DIE_ON_ERROR, &err);

	iter = FUNC1(FUNC4(refs), NULL, 0);
	while ((ok = FUNC9(iter)) == ITER_OK) {
		/*
		 * If the loose reference can be packed, add an entry
		 * in the packed ref cache. If the reference should be
		 * pruned, also add it to refs_to_prune.
		 */
		if (!FUNC14(iter->refname, iter->oid, iter->flags,
				     flags))
			continue;

		/*
		 * Add a reference creation for this reference to the
		 * packed-refs transaction:
		 */
		if (FUNC13(transaction, iter->refname,
					   iter->oid, NULL,
					   REF_NO_DEREF, NULL, &err))
			FUNC2("failure preparing to create packed reference %s: %s",
			    iter->refname, err.buf);

		/* Schedule the loose reference for pruning if requested. */
		if ((flags & PACK_REFS_PRUNE)) {
			struct ref_to_prune *n;
			FUNC0(n, name, iter->refname);
			FUNC5(&n->oid, iter->oid);
			n->next = refs_to_prune;
			refs_to_prune = n;
		}
	}
	if (ok != ITER_DONE)
		FUNC2("error while iterating over references");

	if (FUNC11(transaction, &err))
		FUNC2("unable to write new packed-refs: %s", err.buf);

	FUNC12(transaction);

	FUNC7(refs->packed_ref_store);

	FUNC8(refs, &refs_to_prune);
	FUNC15(&err);
	return 0;
}