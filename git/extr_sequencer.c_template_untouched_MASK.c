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
struct strbuf {char* buf; scalar_t__ len; } ;
typedef  enum commit_msg_cleanup_mode { ____Placeholder_commit_msg_cleanup_mode } commit_msg_cleanup_mode ;

/* Variables and functions */
 int COMMIT_MSG_CLEANUP_ALL ; 
 int COMMIT_MSG_CLEANUP_NONE ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (struct strbuf const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const**) ; 
 scalar_t__ FUNC2 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 

int FUNC5(const struct strbuf *sb, const char *template_file,
		       enum commit_msg_cleanup_mode cleanup_mode)
{
	struct strbuf tmpl = STRBUF_INIT;
	const char *start;

	if (cleanup_mode == COMMIT_MSG_CLEANUP_NONE && sb->len)
		return 0;

	if (!template_file || FUNC2(&tmpl, template_file, 0) <= 0)
		return 0;

	FUNC4(&tmpl, cleanup_mode == COMMIT_MSG_CLEANUP_ALL);
	if (!FUNC1(sb->buf, tmpl.buf, &start))
		start = sb->buf;
	FUNC3(&tmpl);
	return FUNC0(sb, start - sb->buf);
}