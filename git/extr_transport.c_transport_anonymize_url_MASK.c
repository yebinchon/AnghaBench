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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 void* FUNC1 (char const*,char) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,int,char const*,int,char*) ; 

char *FUNC7(const char *url)
{
	char *scheme_prefix, *anon_part;
	size_t anon_len, prefix_len = 0;

	anon_part = FUNC1(url, '@');
	if (FUNC4(url) || !anon_part)
		goto literal_copy;

	anon_len = FUNC2(++anon_part);
	scheme_prefix = FUNC3(url, "://");
	if (!scheme_prefix) {
		if (!FUNC1(anon_part, ':'))
			/* cannot be "me@there:/path/name" */
			goto literal_copy;
	} else {
		const char *cp;
		/* make sure scheme is reasonable */
		for (cp = url; cp < scheme_prefix; cp++) {
			switch (*cp) {
				/* RFC 1738 2.1 */
			case '+': case '.': case '-':
				break; /* ok */
			default:
				if (FUNC0(*cp))
					break;
				/* it isn't */
				goto literal_copy;
			}
		}
		/* @ past the first slash does not count */
		cp = FUNC1(scheme_prefix + 3, '/');
		if (cp && cp < anon_part)
			goto literal_copy;
		prefix_len = scheme_prefix - url + 3;
	}
	return FUNC6("%.*s%.*s", (int)prefix_len, url,
		       (int)anon_len, anon_part);
literal_copy:
	return FUNC5(url);
}