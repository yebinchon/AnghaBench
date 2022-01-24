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
struct strbuf {size_t len; char* buf; } ;

/* Variables and functions */
 unsigned int APPEND_SIGNOFF_DEDUP ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  WANT_COMMITTER_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct strbuf*,struct strbuf*,size_t) ; 
 int /*<<< orphan*/  sign_off_header ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,size_t,int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 

void FUNC9(struct strbuf *msgbuf, size_t ignore_footer, unsigned flag)
{
	unsigned no_dup_sob = flag & APPEND_SIGNOFF_DEDUP;
	struct strbuf sob = STRBUF_INIT;
	int has_footer;

	FUNC3(&sob, sign_off_header);
	FUNC3(&sob, FUNC0(WANT_COMMITTER_IDENT));
	FUNC2(&sob, '\n');

	if (!ignore_footer)
		FUNC4(msgbuf);

	/*
	 * If the whole message buffer is equal to the sob, pretend that we
	 * found a conforming footer with a matching sob
	 */
	if (msgbuf->len - ignore_footer == sob.len &&
	    !FUNC8(msgbuf->buf, sob.buf, sob.len))
		has_footer = 3;
	else
		has_footer = FUNC1(msgbuf, &sob, ignore_footer);

	if (!has_footer) {
		const char *append_newlines = NULL;
		size_t len = msgbuf->len - ignore_footer;

		if (!len) {
			/*
			 * The buffer is completely empty.  Leave foom for
			 * the title and body to be filled in by the user.
			 */
			append_newlines = "\n\n";
		} else if (len == 1) {
			/*
			 * Buffer contains a single newline.  Add another
			 * so that we leave room for the title and body.
			 */
			append_newlines = "\n";
		} else if (msgbuf->buf[len - 2] != '\n') {
			/*
			 * Buffer ends with a single newline.  Add another
			 * so that there is an empty line between the message
			 * body and the sob.
			 */
			append_newlines = "\n";
		} /* else, the buffer already ends with two newlines. */

		if (append_newlines)
			FUNC6(msgbuf, msgbuf->len - ignore_footer, 0,
				append_newlines, FUNC7(append_newlines));
	}

	if (has_footer != 3 && (!no_dup_sob || has_footer != 2))
		FUNC6(msgbuf, msgbuf->len - ignore_footer, 0,
				sob.buf, sob.len);

	FUNC5(&sob);
}