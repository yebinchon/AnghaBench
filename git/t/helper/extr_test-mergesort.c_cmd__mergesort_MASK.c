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
struct strbuf {int dummy; } ;
struct line {char* text; struct line* next; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  compare_strings ; 
 int /*<<< orphan*/  get_next ; 
 struct line* FUNC0 (struct line*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  set_next ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC2 (struct strbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ ,char) ; 
 struct line* FUNC4 (int) ; 

int FUNC5(int argc, const char **argv)
{
	struct line *line, *p = NULL, *lines = NULL;
	struct strbuf sb = STRBUF_INIT;

	for (;;) {
		if (FUNC3(&sb, stdin, '\n'))
			break;
		line = FUNC4(sizeof(struct line));
		line->text = FUNC2(&sb, NULL);
		if (p) {
			line->next = p->next;
			p->next = line;
		} else {
			line->next = NULL;
			lines = line;
		}
		p = line;
	}

	lines = FUNC0(lines, get_next, set_next, compare_strings);

	while (lines) {
		FUNC1("%s", lines->text);
		lines = lines->next;
	}
	return 0;
}