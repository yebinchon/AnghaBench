#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct strbuf {char* buf; size_t len; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  author; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int S_IFLNK ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ node_ctx ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ rev_ctx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct strbuf*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static void FUNC7(const struct strbuf *key_buf,
				struct strbuf *val,
				uint32_t *type_set)
{
	const char *key = key_buf->buf;
	size_t keylen = key_buf->len;

	switch (keylen + 1) {
	case sizeof("svn:log"):
		if (FUNC0(key, "svn:log"))
			break;
		if (!val)
			FUNC1("invalid dump: unsets svn:log");
		FUNC4(&rev_ctx.log, val);
		break;
	case sizeof("svn:author"):
		if (FUNC0(key, "svn:author"))
			break;
		if (!val)
			FUNC3(&rev_ctx.author);
		else
			FUNC4(&rev_ctx.author, val);
		break;
	case sizeof("svn:date"):
		if (FUNC0(key, "svn:date"))
			break;
		if (!val)
			FUNC1("invalid dump: unsets svn:date");
		if (FUNC2(val->buf, &rev_ctx.timestamp, NULL))
			FUNC6("invalid timestamp: %s", val->buf);
		break;
	case sizeof("svn:executable"):
	case sizeof("svn:special"):
		if (keylen == FUNC5("svn:executable") &&
		    FUNC0(key, "svn:executable"))
			break;
		if (keylen == FUNC5("svn:special") &&
		    FUNC0(key, "svn:special"))
			break;
		if (*type_set) {
			if (!val)
				return;
			FUNC1("invalid dump: sets type twice");
		}
		if (!val) {
			node_ctx.type = S_IFREG | 0644;
			return;
		}
		*type_set = 1;
		node_ctx.type = keylen == FUNC5("svn:executable") ?
				(S_IFREG | 0755) :
				S_IFLNK;
	}
}