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
struct strbuf {char* buf; int len; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC8 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

int FUNC11(struct strbuf *sb, const char *gitdir)
{
	struct strbuf data = STRBUF_INIT;
	struct strbuf path = STRBUF_INIT;
	int ret = 0;

	FUNC6(&path, "%s/commondir", gitdir);
	if (FUNC2(path.buf)) {
		if (FUNC8(&data, path.buf, 0) <= 0)
			FUNC1(FUNC0("failed to read %s"), path.buf);
		while (data.len && (data.buf[data.len - 1] == '\n' ||
				    data.buf[data.len - 1] == '\r'))
			data.len--;
		data.buf[data.len] = '\0';
		FUNC10(&path);
		if (!FUNC3(data.buf))
			FUNC6(&path, "%s/", gitdir);
		FUNC5(&path, &data);
		FUNC4(sb, path.buf);
		ret = 1;
	} else {
		FUNC7(sb, gitdir);
	}

	FUNC9(&data);
	FUNC9(&path);
	return ret;
}