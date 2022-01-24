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
struct repository {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,...) ; 
 struct ref_store* FUNC2 (struct repository*) ; 
 scalar_t__ FUNC3 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ref_transaction* FUNC5 (struct ref_store*,struct strbuf*) ; 
 scalar_t__ FUNC6 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ref_transaction*) ; 
 scalar_t__ FUNC8 (struct ref_transaction*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 

__attribute__((used)) static int FUNC12(struct repository *r, const char *name, int len)
{
	struct ref_store *refs = FUNC2(r);
	struct ref_transaction *transaction;
	struct strbuf ref_name = STRBUF_INIT, err = STRBUF_INIT;
	struct strbuf msg = STRBUF_INIT;
	int ret = 0;
	struct object_id head_oid;

	if (len == 1 && *name == '#')
		return FUNC1(FUNC0("illegal label name: '%.*s'"), len, name);

	FUNC10(&ref_name, "refs/rewritten/%.*s", len, name);
	FUNC10(&msg, "rebase -i (label) '%.*s'", len, name);

	transaction = FUNC5(refs, &err);
	if (!transaction) {
		FUNC1("%s", err.buf);
		ret = -1;
	} else if (FUNC3("HEAD", &head_oid)) {
		FUNC1(FUNC0("could not read HEAD"));
		ret = -1;
	} else if (FUNC8(transaction, ref_name.buf, &head_oid,
					  NULL, 0, msg.buf, &err) < 0 ||
		   FUNC6(transaction, &err)) {
		FUNC1("%s", err.buf);
		ret = -1;
	}
	FUNC7(transaction);
	FUNC11(&err);
	FUNC11(&msg);

	if (!ret)
		ret = FUNC9(FUNC4(),
				  "%s\n", ref_name.buf);
	FUNC11(&ref_name);

	return ret;
}