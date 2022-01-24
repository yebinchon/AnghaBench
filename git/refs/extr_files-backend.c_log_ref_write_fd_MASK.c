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
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int fd, const struct object_id *old_oid,
			    const struct object_id *new_oid,
			    const char *committer, const char *msg)
{
	struct strbuf sb = STRBUF_INIT;
	int ret = 0;

	FUNC3(&sb, "%s %s %s", FUNC1(old_oid), FUNC1(new_oid), committer);
	if (msg && *msg)
		FUNC0(&sb, msg);
	FUNC2(&sb, '\n');
	if (FUNC5(fd, sb.buf, sb.len) < 0)
		ret = -1;
	FUNC4(&sb);
	return ret;
}