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
struct tm {int dummy; } ;
struct strbuf {char* buf; size_t len; scalar_t__ alloc; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,size_t) ; 
 char* FUNC7 (char const*,char) ; 
 size_t FUNC8 (char*,scalar_t__,char const*,struct tm const*) ; 

void FUNC9(struct strbuf *sb, const char *fmt, const struct tm *tm,
		     int tz_offset, int suppress_tz_name)
{
	struct strbuf munged_fmt = STRBUF_INIT;
	size_t hint = 128;
	size_t len;

	if (!*fmt)
		return;

	/*
	 * There is no portable way to pass timezone information to
	 * strftime, so we handle %z and %Z here.
	 */
	for (;;) {
		const char *percent = FUNC7(fmt, '%');
		FUNC0(&munged_fmt, fmt, percent - fmt);
		if (!*percent)
			break;
		fmt = percent + 1;
		switch (*fmt) {
		case '%':
			FUNC3(&munged_fmt, "%%");
			fmt++;
			break;
		case 'z':
			FUNC2(&munged_fmt, "%+05d", tz_offset);
			fmt++;
			break;
		case 'Z':
			if (suppress_tz_name) {
				fmt++;
				break;
			}
			/* FALLTHROUGH */
		default:
			FUNC1(&munged_fmt, '%');
		}
	}
	fmt = munged_fmt.buf;

	FUNC4(sb, hint);
	len = FUNC8(sb->buf + sb->len, sb->alloc - sb->len, fmt, tm);

	if (!len) {
		/*
		 * strftime reports "0" if it could not fit the result in the buffer.
		 * Unfortunately, it also reports "0" if the requested time string
		 * takes 0 bytes. So our strategy is to munge the format so that the
		 * output contains at least one character, and then drop the extra
		 * character before returning.
		 */
		FUNC1(&munged_fmt, ' ');
		while (!len) {
			hint *= 2;
			FUNC4(sb, hint);
			len = FUNC8(sb->buf + sb->len, sb->alloc - sb->len,
				       munged_fmt.buf, tm);
		}
		len--; /* drop munged space */
	}
	FUNC5(&munged_fmt);
	FUNC6(sb, sb->len + len);
}