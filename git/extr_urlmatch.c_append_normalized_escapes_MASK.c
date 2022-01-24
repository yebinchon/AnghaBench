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
 char const* URL_UNSAFE_CHARS ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,unsigned char) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

__attribute__((used)) static int FUNC4(struct strbuf *buf,
				     const char *from,
				     size_t from_len,
				     const char *esc_extra,
				     const char *esc_ok)
{
	/*
	 * Append to strbuf 'buf' characters from string 'from' with length
	 * 'from_len' while unescaping characters that do not need to be escaped
	 * and escaping characters that do.  The set of characters to escape
	 * (the complement of which is unescaped) starts out as the RFC 3986
	 * unsafe characters (0x00-0x1F,0x7F-0xFF," <>\"#%{}|\\^`").  If
	 * 'esc_extra' is not NULL, those additional characters will also always
	 * be escaped.  If 'esc_ok' is not NULL, those characters will be left
	 * escaped if found that way, but will not be unescaped otherwise (used
	 * for delimiters).  If a %-escape sequence is encountered that is not
	 * followed by 2 hexadecimal digits, the sequence is invalid and
	 * false (0) will be returned.  Otherwise true (1) will be returned for
	 * success.
	 *
	 * Note that all %-escape sequences will be normalized to UPPERCASE
	 * as indicated in RFC 3986.  Unless included in esc_extra or esc_ok
	 * alphanumerics and "-._~" will always be unescaped as per RFC 3986.
	 */

	while (from_len) {
		int ch = *from++;
		int was_esc = 0;

		from_len--;
		if (ch == '%') {
			if (from_len < 2)
				return 0;
			ch = FUNC0(from);
			if (ch < 0)
				return 0;
			from += 2;
			from_len -= 2;
			was_esc = 1;
		}
		if ((unsigned char)ch <= 0x1F || (unsigned char)ch >= 0x7F ||
		    FUNC3(URL_UNSAFE_CHARS, ch) ||
		    (esc_extra && FUNC3(esc_extra, ch)) ||
		    (was_esc && FUNC3(esc_ok, ch)))
			FUNC2(buf, "%%%02X", (unsigned char)ch);
		else
			FUNC1(buf, ch);
	}

	return 1;
}