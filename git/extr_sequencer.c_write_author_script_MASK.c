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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(const char *message)
{
	struct strbuf buf = STRBUF_INIT;
	const char *eol;
	int res;

	for (;;)
		if (!*message || FUNC2(message, "\n")) {
missing_author:
			/* Missing 'author' line? */
			FUNC8(FUNC0());
			return 0;
		} else if (FUNC1(message, "author ", &message))
			break;
		else if ((eol = FUNC7(message, '\n')))
			message = eol + 1;
		else
			goto missing_author;

	FUNC5(&buf, "GIT_AUTHOR_NAME='");
	while (*message && *message != '\n' && *message != '\r')
		if (FUNC1(message, " <", &message))
			break;
		else if (*message != '\'')
			FUNC3(&buf, *(message++));
		else
			FUNC4(&buf, "'\\%c'", *(message++));
	FUNC5(&buf, "'\nGIT_AUTHOR_EMAIL='");
	while (*message && *message != '\n' && *message != '\r')
		if (FUNC1(message, "> ", &message))
			break;
		else if (*message != '\'')
			FUNC3(&buf, *(message++));
		else
			FUNC4(&buf, "'\\%c'", *(message++));
	FUNC5(&buf, "'\nGIT_AUTHOR_DATE='@");
	while (*message && *message != '\n' && *message != '\r')
		if (*message != '\'')
			FUNC3(&buf, *(message++));
		else
			FUNC4(&buf, "'\\%c'", *(message++));
	FUNC3(&buf, '\'');
	res = FUNC9(buf.buf, buf.len, FUNC0(), 1);
	FUNC6(&buf);
	return res;
}