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
struct strbuf {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,size_t) ; 
 size_t FUNC3 (char const*,char*) ; 

int FUNC4(struct strbuf *sb, const char *quoted, const char **endp)
{
	size_t oldlen = sb->len, len;
	int ch, ac;

	if (*quoted++ != '"')
		return -1;

	for (;;) {
		len = FUNC3(quoted, "\"\\");
		FUNC0(sb, quoted, len);
		quoted += len;

		switch (*quoted++) {
		  case '"':
			if (endp)
				*endp = quoted;
			return 0;
		  case '\\':
			break;
		  default:
			goto error;
		}

		switch ((ch = *quoted++)) {
		case 'a': ch = '\a'; break;
		case 'b': ch = '\b'; break;
		case 'f': ch = '\f'; break;
		case 'n': ch = '\n'; break;
		case 'r': ch = '\r'; break;
		case 't': ch = '\t'; break;
		case 'v': ch = '\v'; break;

		case '\\': case '"':
			break; /* verbatim */

		/* octal values with first digit over 4 overflow */
		case '0': case '1': case '2': case '3':
					ac = ((ch - '0') << 6);
			if ((ch = *quoted++) < '0' || '7' < ch)
				goto error;
					ac |= ((ch - '0') << 3);
			if ((ch = *quoted++) < '0' || '7' < ch)
				goto error;
					ac |= (ch - '0');
					ch = ac;
					break;
				default:
			goto error;
			}
		FUNC1(sb, ch);
		}

  error:
	FUNC2(sb, oldlen);
	return -1;
}