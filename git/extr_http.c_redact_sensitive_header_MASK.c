#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int buf; } ;
struct TYPE_3__ {scalar_t__ nr; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 TYPE_1__ cookies_to_redact ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(struct strbuf *header)
{
	const char *sensitive_header;

	if (FUNC1(header->buf, "Authorization:", &sensitive_header) ||
	    FUNC1(header->buf, "Proxy-Authorization:", &sensitive_header)) {
		/* The first token is the type, which is OK to log */
		while (FUNC0(*sensitive_header))
			sensitive_header++;
		while (*sensitive_header && !FUNC0(*sensitive_header))
			sensitive_header++;
		/* Everything else is opaque and possibly sensitive */
		FUNC4(header,  sensitive_header - header->buf);
		FUNC3(header, " <redacted>");
	} else if (cookies_to_redact.nr &&
		   FUNC1(header->buf, "Cookie:", &sensitive_header)) {
		struct strbuf redacted_header = STRBUF_INIT;
		char *cookie;

		while (FUNC0(*sensitive_header))
			sensitive_header++;

		/*
		 * The contents of header starting from sensitive_header will
		 * subsequently be overridden, so it is fine to mutate this
		 * string (hence the assignment to "char *").
		 */
		cookie = (char *) sensitive_header;

		while (cookie) {
			char *equals;
			char *semicolon = FUNC8(cookie, "; ");
			if (semicolon)
				*semicolon = 0;
			equals = FUNC5(cookie, '=');
			if (!equals) {
				/* invalid cookie, just append and continue */
				FUNC3(&redacted_header, cookie);
				continue;
			}
			*equals = 0; /* temporarily set to NUL for lookup */
			if (FUNC6(&cookies_to_redact, cookie)) {
				FUNC3(&redacted_header, cookie);
				FUNC3(&redacted_header, "=<redacted>");
			} else {
				*equals = '=';
				FUNC3(&redacted_header, cookie);
			}
			if (semicolon) {
				/*
				 * There are more cookies. (Or, for some
				 * reason, the input string ends in "; ".)
				 */
				FUNC3(&redacted_header, "; ");
				cookie = semicolon + FUNC7("; ");
			} else {
				cookie = NULL;
			}
		}

		FUNC4(header, sensitive_header - header->buf);
		FUNC2(header, &redacted_header);
	}
}