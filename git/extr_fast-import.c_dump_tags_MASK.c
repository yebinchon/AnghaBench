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
struct tag {int /*<<< orphan*/  oid; int /*<<< orphan*/  name; struct tag* next_tag; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_transaction {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  failure ; 
 struct tag* first_tag ; 
 struct ref_transaction* FUNC1 (struct strbuf*) ; 
 scalar_t__ FUNC2 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ref_transaction*) ; 
 scalar_t__ FUNC4 (struct ref_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(void)
{
	static const char *msg = "fast-import";
	struct tag *t;
	struct strbuf ref_name = STRBUF_INIT;
	struct strbuf err = STRBUF_INIT;
	struct ref_transaction *transaction;

	transaction = FUNC1(&err);
	if (!transaction) {
		failure |= FUNC0("%s", err.buf);
		goto cleanup;
	}
	for (t = first_tag; t; t = t->next_tag) {
		FUNC7(&ref_name);
		FUNC5(&ref_name, "refs/tags/%s", t->name);

		if (FUNC4(transaction, ref_name.buf,
					   &t->oid, NULL, 0, msg, &err)) {
			failure |= FUNC0("%s", err.buf);
			goto cleanup;
		}
	}
	if (FUNC2(transaction, &err))
		failure |= FUNC0("%s", err.buf);

 cleanup:
	FUNC3(transaction);
	FUNC6(&ref_name);
	FUNC6(&err);
}