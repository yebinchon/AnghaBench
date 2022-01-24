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
struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char* buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int /*<<< orphan*/  base; int /*<<< orphan*/  packed_ref_store; } ;
struct TYPE_2__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_STORE_WRITE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 struct files_ref_store* FUNC2 (struct ref_store*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,struct string_list*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static int FUNC8(struct ref_store *ref_store, const char *msg,
			     struct string_list *refnames, unsigned int flags)
{
	struct files_ref_store *refs =
		FUNC2(ref_store, REF_STORE_WRITE, "delete_refs");
	struct strbuf err = STRBUF_INIT;
	int i, result = 0;

	if (!refnames->nr)
		return 0;

	if (FUNC3(refs->packed_ref_store, 0, &err))
		goto error;

	if (FUNC6(refs->packed_ref_store, msg, refnames, flags)) {
		FUNC4(refs->packed_ref_store);
		goto error;
	}

	FUNC4(refs->packed_ref_store);

	for (i = 0; i < refnames->nr; i++) {
		const char *refname = refnames->items[i].string;

		if (FUNC5(&refs->base, msg, refname, NULL, flags))
			result |= FUNC1(FUNC0("could not remove reference %s"), refname);
	}

	FUNC7(&err);
	return result;

error:
	/*
	 * If we failed to rewrite the packed-refs file, then it is
	 * unsafe to try to remove loose refs, because doing so might
	 * expose an obsolete packed value for a reference that might
	 * even point at an object that has been garbage collected.
	 */
	if (refnames->nr == 1)
		FUNC1(FUNC0("could not delete reference %s: %s"),
		      refnames->items[0].string, err.buf);
	else
		FUNC1(FUNC0("could not delete references: %s"), err.buf);

	FUNC7(&err);
	return -1;
}