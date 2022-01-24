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
struct replay_opts {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct replay_opts*) ; 
 scalar_t__ FUNC2 (struct repository*,struct object_id const*,struct object_id const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct replay_opts*) ; 
 struct object_id const null_oid ; 
 struct ref_transaction* FUNC5 (struct strbuf*) ; 
 scalar_t__ FUNC6 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ref_transaction*) ; 
 scalar_t__ FUNC8 (struct ref_transaction*,char*,struct object_id const*,struct object_id const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct repository*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct repository *r,
			   const struct object_id *to,
			   const struct object_id *from,
			   int unborn,
			   struct replay_opts *opts)
{
	struct ref_transaction *transaction;
	struct strbuf sb = STRBUF_INIT;
	struct strbuf err = STRBUF_INIT;

	FUNC9(r);
	if (FUNC2(r, from, to, 1))
		return -1; /* the callee should have complained already */

	FUNC10(&sb, FUNC0("%s: fast-forward"), FUNC0(FUNC1(opts)));

	transaction = FUNC5(&err);
	if (!transaction ||
	    FUNC8(transaction, "HEAD",
				   to, unborn && !FUNC4(opts) ?
				   &null_oid : from,
				   0, sb.buf, &err) ||
	    FUNC6(transaction, &err)) {
		FUNC7(transaction);
		FUNC3("%s", err.buf);
		FUNC11(&sb);
		FUNC11(&err);
		return -1;
	}

	FUNC11(&sb);
	FUNC11(&err);
	FUNC7(transaction);
	FUNC12();
	return 0;
}