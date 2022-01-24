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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
#define  WHENSPEC_NOW 130 
#define  WHENSPEC_RAW 129 
#define  WHENSPEC_RFC2822 128 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,size_t) ; 
 char* FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,struct strbuf*) ; 
 int whenspec ; 

__attribute__((used)) static char *FUNC8(const char *buf)
{
	const char *ltgt;
	size_t name_len;
	struct strbuf ident = STRBUF_INIT;

	/* ensure there is a space delimiter even if there is no name */
	if (*buf == '<')
		--buf;

	ltgt = buf + FUNC6(buf, "<>");
	if (*ltgt != '<')
		FUNC1("Missing < in ident string: %s", buf);
	if (ltgt != buf && ltgt[-1] != ' ')
		FUNC1("Missing space before < in ident string: %s", buf);
	ltgt = ltgt + 1 + FUNC6(ltgt + 1, "<>");
	if (*ltgt != '>')
		FUNC1("Missing > in ident string: %s", buf);
	ltgt++;
	if (*ltgt != ' ')
		FUNC1("Missing space after > in ident string: %s", buf);
	ltgt++;
	name_len = ltgt - buf;
	FUNC3(&ident, buf, name_len);

	switch (whenspec) {
	case WHENSPEC_RAW:
		if (FUNC7(ltgt, &ident) < 0)
			FUNC1("Invalid raw date \"%s\" in ident: %s", ltgt, buf);
		break;
	case WHENSPEC_RFC2822:
		if (FUNC2(ltgt, &ident) < 0)
			FUNC1("Invalid rfc2822 date \"%s\" in ident: %s", ltgt, buf);
		break;
	case WHENSPEC_NOW:
		if (FUNC5("now", ltgt))
			FUNC1("Date in ident must be 'now': %s", buf);
		FUNC0(&ident);
		break;
	}

	return FUNC4(&ident, NULL);
}