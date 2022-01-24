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
struct worktree {int lock_reason_valid; char const* lock_reason; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct worktree*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char const* FUNC6 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct worktree*,char*) ; 

const char *FUNC11(struct worktree *wt)
{
	FUNC1(!FUNC4(wt));

	if (!wt->lock_reason_valid) {
		struct strbuf path = STRBUF_INIT;

		FUNC5(&path, FUNC10(wt, "locked"));
		if (FUNC3(path.buf)) {
			struct strbuf lock_reason = STRBUF_INIT;
			if (FUNC7(&lock_reason, path.buf, 0) < 0)
				FUNC2(FUNC0("failed to read '%s'"), path.buf);
			FUNC9(&lock_reason);
			wt->lock_reason = FUNC6(&lock_reason, NULL);
		} else
			wt->lock_reason = NULL;
		wt->lock_reason_valid = 1;
		FUNC8(&path);
	}

	return wt->lock_reason;
}