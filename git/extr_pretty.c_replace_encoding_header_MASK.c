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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,scalar_t__,scalar_t__) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,scalar_t__,scalar_t__,char const*,scalar_t__) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static char *FUNC8(char *buf, const char *encoding)
{
	struct strbuf tmp = STRBUF_INIT;
	size_t start, len;
	char *cp = buf;

	/* guess if there is an encoding header before a \n\n */
	while (!FUNC1(cp, "encoding ")) {
		cp = FUNC6(cp, '\n');
		if (!cp || *++cp == '\n')
			return buf;
	}
	start = cp - buf;
	cp = FUNC6(cp, '\n');
	if (!cp)
		return buf; /* should not happen but be defensive */
	len = cp + 1 - (buf + start);

	FUNC2(&tmp, buf, FUNC7(buf), FUNC7(buf) + 1);
	if (FUNC0(encoding)) {
		/* we have re-coded to UTF-8; drop the header */
		FUNC4(&tmp, start, len);
	} else {
		/* just replaces XXXX in 'encoding XXXX\n' */
		FUNC5(&tmp, start + FUNC7("encoding "),
					  len - FUNC7("encoding \n"),
					  encoding, FUNC7(encoding));
	}
	return FUNC3(&tmp, NULL);
}