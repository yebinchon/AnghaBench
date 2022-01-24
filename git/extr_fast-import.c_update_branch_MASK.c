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
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct branch {struct object_id oid; int /*<<< orphan*/  name; scalar_t__ delete; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  force_update ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,struct commit*) ; 
 scalar_t__ FUNC3 (struct object_id*) ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct object_id*) ; 
 struct ref_transaction* FUNC8 (struct strbuf*) ; 
 scalar_t__ FUNC9 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ref_transaction*) ; 
 scalar_t__ FUNC11 (struct ref_transaction*,int /*<<< orphan*/ ,struct object_id*,struct object_id*,int /*<<< orphan*/ ,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct branch *b)
{
	static const char *msg = "fast-import";
	struct ref_transaction *transaction;
	struct object_id old_oid;
	struct strbuf err = STRBUF_INIT;

	if (FUNC3(&b->oid)) {
		if (b->delete)
			FUNC0(NULL, b->name, NULL, 0);
		return 0;
	}
	if (FUNC7(b->name, &old_oid))
		FUNC6(&old_oid);
	if (!force_update && !FUNC3(&old_oid)) {
		struct commit *old_cmit, *new_cmit;

		old_cmit = FUNC4(the_repository,
							  &old_oid, 0);
		new_cmit = FUNC4(the_repository,
							  &b->oid, 0);
		if (!old_cmit || !new_cmit)
			return FUNC1("Branch %s is missing commits.", b->name);

		if (!FUNC2(old_cmit, new_cmit)) {
			FUNC13("Not updating %s"
				" (new tip %s does not contain %s)",
				b->name, FUNC5(&b->oid),
				FUNC5(&old_oid));
			return -1;
		}
	}
	transaction = FUNC8(&err);
	if (!transaction ||
	    FUNC11(transaction, b->name, &b->oid, &old_oid,
				   0, msg, &err) ||
	    FUNC9(transaction, &err)) {
		FUNC10(transaction);
		FUNC1("%s", err.buf);
		FUNC12(&err);
		return -1;
	}
	FUNC10(transaction);
	FUNC12(&err);
	return 0;
}