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
typedef  enum rfc2047_type { ____Placeholder_rfc2047_type } rfc2047_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const,int) ; 
 int FUNC1 (struct strbuf*) ; 
 int FUNC2 (char const**,size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,size_t) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(struct strbuf *sb, const char *line, size_t len,
		       const char *encoding, enum rfc2047_type type)
{
	static const int max_encoded_length = 76; /* per rfc2047 */
	int i;
	int line_len = FUNC1(sb);

	FUNC5(sb, len * 3 + FUNC6(encoding) + 100);
	FUNC3(sb, "=?%s?q?", encoding);
	line_len += FUNC6(encoding) + 5; /* 5 for =??q? */

	while (len) {
		/*
		 * RFC 2047, section 5 (3):
		 *
		 * Each 'encoded-word' MUST represent an integral number of
		 * characters.  A multi-octet character may not be split across
		 * adjacent 'encoded- word's.
		 */
		const unsigned char *p = (const unsigned char *)line;
		int chrlen = FUNC2(&line, &len, encoding);
		int is_special = (chrlen > 1) || FUNC0(*p, type);

		/* "=%02X" * chrlen, or the byte itself */
		const char *encoded_fmt = is_special ? "=%02X"    : "%c";
		int	    encoded_len = is_special ? 3 * chrlen : 1;

		/*
		 * According to RFC 2047, we could encode the special character
		 * ' ' (space) with '_' (underscore) for readability. But many
		 * programs do not understand this and just leave the
		 * underscore in place. Thus, we do nothing special here, which
		 * causes ' ' to be encoded as '=20', avoiding this problem.
		 */

		if (line_len + encoded_len + 2 > max_encoded_length) {
			/* It won't fit with trailing "?=" --- break the line */
			FUNC3(sb, "?=\n =?%s?q?", encoding);
			line_len = FUNC6(encoding) + 5 + 1; /* =??q? plus SP */
		}

		for (i = 0; i < chrlen; i++)
			FUNC3(sb, encoded_fmt, p[i]);
		line_len += encoded_len;
	}
	FUNC4(sb, "?=");
}