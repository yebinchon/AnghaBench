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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(struct strbuf *buf,
	const char *path, int skip_if_empty)
{
	int orig_len = buf->len;

	if (!FUNC1(path))
		return 0;

	if (FUNC2(buf, path, 0) < 0) {
		FUNC3(FUNC0("could not read '%s'"), path);
		return 0;
	}

	if (buf->len > orig_len && buf->buf[buf->len - 1] == '\n') {
		if (--buf->len > orig_len && buf->buf[buf->len - 1] == '\r')
			--buf->len;
		buf->buf[buf->len] = '\0';
	}

	if (skip_if_empty && buf->len == orig_len)
		return 0;

	return 1;
}