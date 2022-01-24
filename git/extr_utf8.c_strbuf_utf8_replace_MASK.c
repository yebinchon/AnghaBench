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

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,struct strbuf*) ; 
 int FUNC6 (char const*) ; 
 size_t FUNC7 (char const**,int /*<<< orphan*/ *) ; 

void FUNC8(struct strbuf *sb_src, int pos, int width,
			 const char *subst)
{
	struct strbuf sb_dst = STRBUF_INIT;
	char *src = sb_src->buf;
	char *end = src + sb_src->len;
	char *dst;
	int w = 0, subst_len = 0;

	if (subst)
		subst_len = FUNC6(subst);
	FUNC2(&sb_dst, sb_src->len + subst_len);
	dst = sb_dst.buf;

	while (src < end) {
		char *old;
		size_t n;

		while ((n = FUNC0(src))) {
			FUNC1(dst, src, n);
			src += n;
			dst += n;
		}

		if (src >= end)
			break;

		old = src;
		n = FUNC7((const char**)&src, NULL);
		if (!src) 	/* broken utf-8, do nothing */
			goto out;
		if (n && w >= pos && w < pos + width) {
			if (subst) {
				FUNC1(dst, subst, subst_len);
				dst += subst_len;
				subst = NULL;
			}
			w += n;
			continue;
		}
		FUNC1(dst, old, src - old);
		dst += src - old;
		w += n;
	}
	FUNC4(&sb_dst, dst - sb_dst.buf);
	FUNC5(sb_src, &sb_dst);
out:
	FUNC3(&sb_dst);
}