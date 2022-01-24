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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,struct strbuf*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (char const) ; 

__attribute__((used)) static void FUNC8(struct strbuf *raw, struct strbuf *type,
				 struct strbuf *charset)
{
	const char *p;

	FUNC6(type);
	FUNC5(type, raw->len);
	for (p = raw->buf; *p; p++) {
		if (FUNC1(*p))
			continue;
		if (*p == ';') {
			p++;
			break;
		}
		FUNC3(type, FUNC7(*p));
	}

	if (!charset)
		return;

	FUNC6(charset);
	while (*p) {
		while (FUNC1(*p) || *p == ';')
			p++;
		if (!FUNC0(p, "charset", charset))
			return;
		while (*p && !FUNC1(*p))
			p++;
	}

	if (!charset->len && FUNC2(type->buf, "text/"))
		FUNC4(charset, "ISO-8859-1");
}