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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct lock_file {int /*<<< orphan*/  tempfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LOCK_SUFFIX ; 
 scalar_t__ LOCK_SUFFIX_LEN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

char *FUNC6(struct lock_file *lk)
{
	struct strbuf ret = STRBUF_INIT;

	FUNC2(&ret, FUNC1(lk->tempfile));
	if (ret.len <= LOCK_SUFFIX_LEN ||
	    FUNC5(ret.buf + ret.len - LOCK_SUFFIX_LEN, LOCK_SUFFIX))
		FUNC0("get_locked_file_path() called for malformed lock object");
	/* remove ".lock": */
	FUNC4(&ret, ret.len - LOCK_SUFFIX_LEN);
	return FUNC3(&ret, NULL);
}