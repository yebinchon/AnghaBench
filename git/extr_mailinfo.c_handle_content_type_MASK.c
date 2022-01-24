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
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct mailinfo {int input_error; struct strbuf charset; struct strbuf** content_top; struct strbuf** content; void* delsp; void* format_flowed; } ;

/* Variables and functions */
 size_t MAX_BOUNDARIES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 struct strbuf* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct mailinfo *mi, struct strbuf *line)
{
	struct strbuf *boundary = FUNC7(sizeof(struct strbuf));
	FUNC4(boundary, line->len);

	mi->format_flowed = FUNC2(line->buf, "format=", "flowed");
	mi->delsp = FUNC2(line->buf, "delsp=", "yes");

	if (FUNC3(line->buf, "boundary=", boundary)) {
		FUNC5(boundary, 0, "--", 2);
		if (++mi->content_top >= &mi->content[MAX_BOUNDARIES]) {
			FUNC0("Too many boundaries to handle");
			mi->input_error = -1;
			mi->content_top = &mi->content[MAX_BOUNDARIES] - 1;
			return;
		}
		*(mi->content_top) = boundary;
		boundary = NULL;
	}
	FUNC3(line->buf, "charset=", &mi->charset);

	if (boundary) {
		FUNC6(boundary);
		FUNC1(boundary);
	}
}