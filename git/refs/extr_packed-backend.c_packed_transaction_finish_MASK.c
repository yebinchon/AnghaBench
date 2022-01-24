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
struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct packed_ref_store {int /*<<< orphan*/  path; int /*<<< orphan*/  tempfile; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int REF_STORE_ODB ; 
 int REF_STORE_READ ; 
 int REF_STORE_WRITE ; 
 int TRANSACTION_GENERIC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct packed_ref_store*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 struct packed_ref_store* FUNC3 (struct ref_store*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct packed_ref_store*,struct ref_transaction*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ref_store *ref_store,
				     struct ref_transaction *transaction,
				     struct strbuf *err)
{
	struct packed_ref_store *refs = FUNC3(
			ref_store,
			REF_STORE_READ | REF_STORE_WRITE | REF_STORE_ODB,
			"ref_transaction_finish");
	int ret = TRANSACTION_GENERIC_ERROR;
	char *packed_refs_path;

	FUNC0(refs);

	packed_refs_path = FUNC2(&refs->lock);
	if (FUNC5(&refs->tempfile, packed_refs_path)) {
		FUNC6(err, "error replacing %s: %s",
			    refs->path, FUNC7(errno));
		goto cleanup;
	}

	ret = 0;

cleanup:
	FUNC1(packed_refs_path);
	FUNC4(refs, transaction);
	return ret;
}