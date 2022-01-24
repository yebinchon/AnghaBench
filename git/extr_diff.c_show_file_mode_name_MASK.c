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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct diff_options {int dummy; } ;
struct diff_filespec {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SYMBOL_SUMMARY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static void FUNC5(struct diff_options *opt, const char *newdelete, struct diff_filespec *fs)
{
	struct strbuf sb = STRBUF_INIT;
	if (fs->mode)
		FUNC3(&sb, " %s mode %06o ", newdelete, fs->mode);
	else
		FUNC3(&sb, " %s ", newdelete);

	FUNC1(fs->path, &sb, NULL, 0);
	FUNC2(&sb, '\n');
	FUNC0(opt, DIFF_SYMBOL_SUMMARY,
			 sb.buf, sb.len, 0);
	FUNC4(&sb);
}