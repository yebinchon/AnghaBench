#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; int len; } ;
struct format_commit_context {int padding; scalar_t__ flush_type; int truncate; TYPE_1__* pretty_ctx; } ;
struct TYPE_2__ {scalar_t__ graph_width; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char const*) ; 
 scalar_t__ flush_both ; 
 scalar_t__ flush_left ; 
 scalar_t__ flush_left_and_steal ; 
 int FUNC1 (struct strbuf*,char const*,struct format_commit_context*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 
 scalar_t__ no_flush ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int,int,char*) ; 
 char* FUNC9 (char*,char) ; 
#define  trunc_left 131 
#define  trunc_middle 130 
#define  trunc_none 129 
#define  trunc_right 128 
 int FUNC10 (char const*,int,int) ; 

__attribute__((used)) static size_t FUNC11(struct strbuf *sb, /* in UTF-8 */
				    const char *placeholder,
				    struct format_commit_context *c)
{
	struct strbuf local_sb = STRBUF_INIT;
	int total_consumed = 0, len, padding = c->padding;
	if (padding < 0) {
		const char *start = FUNC9(sb->buf, '\n');
		int occupied;
		if (!start)
			start = sb->buf;
		occupied = FUNC10(start, -1, 1);
		occupied += c->pretty_ctx->graph_width;
		padding = (-padding) - occupied;
	}
	while (1) {
		int modifier = *placeholder == 'C';
		int consumed = FUNC1(&local_sb, placeholder, c);
		total_consumed += consumed;

		if (!modifier)
			break;

		placeholder += consumed;
		if (*placeholder != '%')
			break;
		placeholder++;
		total_consumed++;
	}
	len = FUNC10(local_sb.buf, -1, 1);

	if (c->flush_type == flush_left_and_steal) {
		const char *ch = sb->buf + sb->len - 1;
		while (len > padding && ch > sb->buf) {
			const char *p;
			if (*ch == ' ') {
				ch--;
				padding++;
				continue;
			}
			/* check for trailing ansi sequences */
			if (*ch != 'm')
				break;
			p = ch - 1;
			while (ch - p < 10 && *p != '\033')
				p--;
			if (*p != '\033' ||
			    ch + 1 - p != FUNC0(p))
				break;
			/*
			 * got a good ansi sequence, put it back to
			 * local_sb as we're cutting sb
			 */
			FUNC5(&local_sb, 0, p, ch + 1 - p);
			ch = p - 1;
		}
		FUNC7(sb, ch + 1 - sb->buf);
		c->flush_type = flush_left;
	}

	if (len > padding) {
		switch (c->truncate) {
		case trunc_left:
			FUNC8(&local_sb,
					    0, len - (padding - 2),
					    "..");
			break;
		case trunc_middle:
			FUNC8(&local_sb,
					    padding / 2 - 1,
					    len - (padding - 2),
					    "..");
			break;
		case trunc_right:
			FUNC8(&local_sb,
					    padding - 2, len - (padding - 2),
					    "..");
			break;
		case trunc_none:
			break;
		}
		FUNC3(sb, &local_sb);
	} else {
		int sb_len = sb->len, offset = 0;
		if (c->flush_type == flush_left)
			offset = padding - len;
		else if (c->flush_type == flush_both)
			offset = (padding - len) / 2;
		/*
		 * we calculate padding in columns, now
		 * convert it back to chars
		 */
		padding = padding - len + local_sb.len;
		FUNC4(sb, ' ', padding);
		FUNC2(sb->buf + sb_len + offset, local_sb.buf,
		       local_sb.len);
	}
	FUNC6(&local_sb);
	c->flush_type = no_flush;
	return total_consumed;
}