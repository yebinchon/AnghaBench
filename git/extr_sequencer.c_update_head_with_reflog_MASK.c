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
struct strbuf {int buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  null_oid ; 
 struct ref_transaction* FUNC0 (struct strbuf*) ; 
 scalar_t__ FUNC1 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ref_transaction*) ; 
 scalar_t__ FUNC3 (struct ref_transaction*,char*,struct object_id const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (int,char) ; 

int FUNC10(const struct commit *old_head,
			    const struct object_id *new_head,
			    const char *action, const struct strbuf *msg,
			    struct strbuf *err)
{
	struct ref_transaction *transaction;
	struct strbuf sb = STRBUF_INIT;
	const char *nl;
	int ret = 0;

	if (action) {
		FUNC7(&sb, action);
		FUNC7(&sb, ": ");
	}

	nl = FUNC9(msg->buf, '\n');
	if (nl) {
		FUNC4(&sb, msg->buf, nl + 1 - msg->buf);
	} else {
		FUNC5(&sb, msg);
		FUNC6(&sb, '\n');
	}

	transaction = FUNC0(err);
	if (!transaction ||
	    FUNC3(transaction, "HEAD", new_head,
				   old_head ? &old_head->object.oid : &null_oid,
				   0, sb.buf, err) ||
	    FUNC1(transaction, err)) {
		ret = -1;
	}
	FUNC2(transaction);
	FUNC8(&sb);

	return ret;
}