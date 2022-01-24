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
struct strbuf {char* buf; scalar_t__ len; } ;
struct mailinfo {int transfer_encoding; scalar_t__ input_error; scalar_t__* content_top; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
#define  TE_BASE64 129 
#define  TE_QP 128 
 int /*<<< orphan*/  FUNC0 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mailinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mailinfo*,struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC6 (struct mailinfo*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 struct strbuf** FUNC13 (struct strbuf*,char) ; 

__attribute__((used)) static void FUNC14(struct mailinfo *mi, struct strbuf *line)
{
	struct strbuf prev = STRBUF_INIT;

	/* Skip up to the first boundary */
	if (*(mi->content_top)) {
		if (!FUNC1(mi, line))
			goto handle_body_out;
	}

	do {
		/* process any boundary lines */
		if (*(mi->content_top) && FUNC6(mi, line)) {
			/* flush any leftover */
			if (prev.len) {
				FUNC4(mi, &prev);
				FUNC12(&prev);
			}
			if (!FUNC3(mi, line))
				goto handle_body_out;
		}

		/* Unwrap transfer encoding */
		FUNC0(mi, line);

		switch (mi->transfer_encoding) {
		case TE_BASE64:
		case TE_QP:
		{
			struct strbuf **lines, **it, *sb;

			/* Prepend any previous partial lines */
			FUNC9(line, 0, prev.buf, prev.len);
			FUNC12(&prev);

			/*
			 * This is a decoded line that may contain
			 * multiple new lines.  Pass only one chunk
			 * at a time to handle_filter()
			 */
			lines = FUNC13(line, '\n');
			for (it = lines; (sb = *it); it++) {
				if (*(it + 1) == NULL) /* The last line */
					if (sb->buf[sb->len - 1] != '\n') {
						/* Partial line, save it for later. */
						FUNC7(&prev, sb);
						break;
					}
				FUNC5(mi, sb, &prev);
			}
			/*
			 * The partial chunk is saved in "prev" and will be
			 * appended by the next iteration of read_line_with_nul().
			 */
			FUNC10(lines);
			break;
		}
		default:
			FUNC5(mi, line, &prev);
		}

		if (mi->input_error)
			break;
	} while (!FUNC8(line, mi->input, '\n'));

	if (prev.len)
		FUNC4(mi, &prev);

	FUNC2(mi);

handle_body_out:
	FUNC11(&prev);
}