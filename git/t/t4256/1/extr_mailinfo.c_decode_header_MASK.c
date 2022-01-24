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
struct strbuf {char* buf; int len; } ;
struct mailinfo {int input_error; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct mailinfo*,struct strbuf*,char*) ; 
 struct strbuf* FUNC1 (struct strbuf*) ; 
 struct strbuf* FUNC2 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char*) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct mailinfo *mi, struct strbuf *it)
{
	char *in, *ep, *cp;
	struct strbuf outbuf = STRBUF_INIT, *dec;
	struct strbuf charset_q = STRBUF_INIT, piecebuf = STRBUF_INIT;
	int found_error = 1; /* pessimism */

	in = it->buf;
	while (in - it->buf <= it->len && (ep = FUNC11(in, "=?")) != NULL) {
		int encoding;
		FUNC9(&charset_q);
		FUNC9(&piecebuf);

		if (in != ep) {
			/*
			 * We are about to process an encoded-word
			 * that begins at ep, but there is something
			 * before the encoded word.
			 */
			char *scan;
			for (scan = in; scan < ep; scan++)
				if (!FUNC4(*scan))
					break;

			if (scan != ep || in == it->buf) {
				/*
				 * We should not lose that "something",
				 * unless we have just processed an
				 * encoded-word, and there is only LWS
				 * before the one we are about to process.
				 */
				FUNC5(&outbuf, in, ep - in);
			}
		}
		/* E.g.
		 * ep : "=?iso-2022-jp?B?GyR...?= foo"
		 * ep : "=?ISO-8859-1?Q?Foo=FCbar?= baz"
		 */
		ep += 2;

		if (ep - it->buf >= it->len || !(cp = FUNC10(ep, '?')))
			goto release_return;

		if (cp + 3 - it->buf > it->len)
			goto release_return;
		FUNC5(&charset_q, ep, cp - ep);

		encoding = cp[1];
		if (!encoding || cp[2] != '?')
			goto release_return;
		ep = FUNC11(cp + 3, "?=");
		if (!ep)
			goto release_return;
		FUNC5(&piecebuf, cp + 3, ep - cp - 3);
		switch (FUNC12(encoding)) {
		default:
			goto release_return;
		case 'b':
			dec = FUNC1(&piecebuf);
			break;
		case 'q':
			dec = FUNC2(&piecebuf, 1);
			break;
		}
		if (FUNC0(mi, dec, charset_q.buf))
			goto release_return;

		FUNC6(&outbuf, dec);
		FUNC8(dec);
		FUNC3(dec);
		in = ep + 2;
	}
	FUNC7(&outbuf, in);
	FUNC9(it);
	FUNC6(it, &outbuf);
	found_error = 0;
release_return:
	FUNC8(&outbuf);
	FUNC8(&charset_q);
	FUNC8(&piecebuf);

	if (found_error)
		mi->input_error = -1;
}