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
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct object_id*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct object_id*,char const**) ; 
 scalar_t__ FUNC9 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct repository*) ; 
 int FUNC12 (struct replay_opts*) ; 
 scalar_t__ FUNC13 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 char* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(struct repository *r, struct replay_opts *opts)
{
	FILE *f;
	struct object_id oid;
	struct strbuf buf = STRBUF_INIT;
	const char *p;

	f = FUNC5(FUNC6(), "r");
	if (!f && errno == ENOENT) {
		/*
		 * There is no multiple-cherry-pick in progress.
		 * If CHERRY_PICK_HEAD or REVERT_HEAD indicates
		 * a single-cherry-pick in progress, abort that.
		 */
		return FUNC11(r);
	}
	if (!f)
		return FUNC2(FUNC0("cannot open '%s'"), FUNC6());
	if (FUNC13(&buf, f)) {
		FUNC1(FUNC0("cannot read '%s': %s"), FUNC6(),
		      FUNC4(f) ?  FUNC15(errno) : FUNC0("unexpected end of file"));
		FUNC3(f);
		goto fail;
	}
	FUNC3(f);
	if (FUNC8(buf.buf, &oid, &p) || *p != '\0') {
		FUNC1(FUNC0("stored pre-cherry-pick HEAD file '%s' is corrupt"),
			FUNC6());
		goto fail;
	}
	if (FUNC7(&oid)) {
		FUNC1(FUNC0("cannot abort from a branch yet to be born"));
		goto fail;
	}

	if (!FUNC10()) {
		/* Do not error, just do not rollback */
		FUNC16(FUNC0("You seem to have moved HEAD. "
			  "Not rewinding, check your HEAD!"));
	} else
	if (FUNC9(&oid))
		goto fail;
	FUNC14(&buf);
	return FUNC12(opts);
fail:
	FUNC14(&buf);
	return -1;
}