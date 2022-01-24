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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static char *FUNC9(const char *file)
{
	const char *p = FUNC0("PATH");
	struct strbuf buf = STRBUF_INIT;

	if (!p || !*p)
		return NULL;

	while (1) {
		const char *end = FUNC8(p, ':');

		FUNC7(&buf);

		/* POSIX specifies an empty entry as the current directory. */
		if (end != p) {
			FUNC2(&buf, p, end - p);
			FUNC3(&buf, '/');
		}
		FUNC4(&buf, file);

		if (FUNC1(buf.buf))
			return FUNC5(&buf, NULL);

		if (!*end)
			break;
		p = end + 1;
	}

	FUNC6(&buf);
	return NULL;
}