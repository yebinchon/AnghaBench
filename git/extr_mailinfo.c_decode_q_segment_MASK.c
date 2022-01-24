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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 struct strbuf* FUNC3 (int) ; 

__attribute__((used)) static struct strbuf *FUNC4(const struct strbuf *q_seg, int rfc2047)
{
	const char *in = q_seg->buf;
	int c;
	struct strbuf *out = FUNC3(sizeof(struct strbuf));
	FUNC2(out, q_seg->len);

	while ((c = *in++) != 0) {
		if (c == '=') {
			int ch, d = *in;
			if (d == '\n' || !d)
				break; /* drop trailing newline */
			ch = FUNC0(in);
			if (ch >= 0) {
				FUNC1(out, ch);
				in += 2;
				continue;
			}
			/* garbage -- fall through */
		}
		if (rfc2047 && c == '_') /* rfc2047 4.2 (2) */
			c = 0x20;
		FUNC1(out, c);
	}
	return out;
}