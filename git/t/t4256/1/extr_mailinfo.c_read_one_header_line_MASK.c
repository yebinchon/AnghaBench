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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct strbuf *line, FILE *in)
{
	struct strbuf continuation = STRBUF_INIT;

	/* Get the first part of the line. */
	if (FUNC4(line, in))
		return 0;

	/*
	 * Is it an empty line or not a valid rfc2822 header?
	 * If so, stop here, and return false ("not a header")
	 */
	FUNC6(line);
	if (!line->len || !FUNC1(line)) {
		/* Re-add the newline */
		FUNC3(line, '\n');
		return 0;
	}

	/*
	 * Now we need to eat all the continuation lines..
	 * Yuck, 2822 header "folding"
	 */
	for (;;) {
		int peek;

		peek = FUNC0(in);
		if (peek == EOF)
			break;
		FUNC7(peek, in);
		if (peek != ' ' && peek != '\t')
			break;
		if (FUNC4(&continuation, in))
			break;
		continuation.buf[0] = ' ';
		FUNC6(&continuation);
		FUNC2(line, &continuation);
	}
	FUNC5(&continuation);

	return 1;
}