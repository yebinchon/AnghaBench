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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

void FUNC6(WINDOW * win, const char *prompt, int width, int y, int x)
{
	int newl, cur_x, cur_y;
	int prompt_len, room, wlen;
	char tempstr[MAX_LEN + 1], *word, *sp, *sp2, *newline_separator = 0;

	FUNC1(tempstr, prompt);

	prompt_len = FUNC2(tempstr);

	if (prompt_len <= width - x * 2) {	/* If prompt is short */
		FUNC5(win, y, (width - prompt_len) / 2);
		FUNC4(win, tempstr);
	} else {
		cur_x = x;
		cur_y = y;
		newl = 1;
		word = tempstr;
		while (word && *word) {
			sp = FUNC3(word, "\n ");
			if (sp && *sp == '\n')
				newline_separator = sp;

			if (sp)
				*sp++ = 0;

			/* Wrap to next line if either the word does not fit,
			   or it is the first word of a new sentence, and it is
			   short, and the next word does not fit. */
			room = width - cur_x;
			wlen = FUNC2(word);
			if (wlen > room ||
			    (newl && wlen < 4 && sp
			     && wlen + 1 + FUNC2(sp) > room
			     && (!(sp2 = FUNC3(sp, "\n "))
				 || wlen + 1 + (sp2 - sp) > room))) {
				cur_y++;
				cur_x = x;
			}
			FUNC5(win, cur_y, cur_x);
			FUNC4(win, word);
			FUNC0(win, cur_y, cur_x);

			/* Move to the next line if the word separator was a newline */
			if (newline_separator) {
				cur_y++;
				cur_x = x;
				newline_separator = 0;
			} else
				cur_x++;

			if (sp && *sp == ' ') {
				cur_x++;	/* double space */
				while (*++sp == ' ') ;
				newl = 1;
			} else
				newl = 0;
			word = sp;
		}
	}
}