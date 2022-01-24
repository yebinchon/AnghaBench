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
struct strbuf {char* buf; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
typedef  enum action_on_err { ____Placeholder_action_on_err } action_on_err ;

/* Variables and functions */
 scalar_t__ REF_TYPE_PSEUDOREF ; 
 struct strbuf STRBUF_INIT ; 
#define  UPDATE_REFS_DIE_ON_ERR 130 
#define  UPDATE_REFS_MSG_ON_ERR 129 
#define  UPDATE_REFS_QUIET_ON_ERR 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,char*) ; 
 struct ref_store* FUNC4 (int /*<<< orphan*/ ) ; 
 struct ref_transaction* FUNC5 (struct ref_store*,struct strbuf*) ; 
 scalar_t__ FUNC6 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ref_transaction*) ; 
 scalar_t__ FUNC8 (struct ref_transaction*,char const*,struct object_id const*,struct object_id const*,unsigned int,char const*,struct strbuf*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC11 (char const*,struct object_id const*,struct object_id const*,struct strbuf*) ; 

int FUNC12(struct ref_store *refs, const char *msg,
		    const char *refname, const struct object_id *new_oid,
		    const struct object_id *old_oid, unsigned int flags,
		    enum action_on_err onerr)
{
	struct ref_transaction *t = NULL;
	struct strbuf err = STRBUF_INIT;
	int ret = 0;

	if (FUNC9(refname) == REF_TYPE_PSEUDOREF) {
		FUNC1(refs == FUNC4(the_repository));
		ret = FUNC11(refname, new_oid, old_oid, &err);
	} else {
		t = FUNC5(refs, &err);
		if (!t ||
		    FUNC8(t, refname, new_oid, old_oid,
					   flags, msg, &err) ||
		    FUNC6(t, &err)) {
			ret = 1;
			FUNC7(t);
		}
	}
	if (ret) {
		const char *str = FUNC0("update_ref failed for ref '%s': %s");

		switch (onerr) {
		case UPDATE_REFS_MSG_ON_ERR:
			FUNC3(str, refname, err.buf);
			break;
		case UPDATE_REFS_DIE_ON_ERR:
			FUNC2(str, refname, err.buf);
			break;
		case UPDATE_REFS_QUIET_ON_ERR:
			break;
		}
		FUNC10(&err);
		return 1;
	}
	FUNC10(&err);
	if (t)
		FUNC7(t);
	return 0;
}