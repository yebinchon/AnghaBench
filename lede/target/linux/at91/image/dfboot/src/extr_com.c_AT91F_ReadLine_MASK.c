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

/* Variables and functions */
 int /*<<< orphan*/  AT91C_CB_SIZE ; 
 char* erase_seq ; 
 char FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char const* const) ; 

int FUNC5 (const char *const prompt, char *console_buffer)
{
	char *p = console_buffer;
	int	n = 0;					/* buffer index		*/
	int	plen = FUNC4 (prompt);	/* prompt length	*/
	int	col;					/* output column cnt	*/
	char	c;

	/* print prompt */
	if (prompt)
		FUNC1(prompt);
	col = plen;

	for (;;) {
		c = FUNC0();

		switch (c) {
			case '\r':				/* Enter		*/
			case '\n':
				*p = '\0';
				FUNC3 ("\n");
				return (p - console_buffer);

			case 0x03:				/* ^C - break	*/
				console_buffer[0] = '\0';	/* discard input */
				return (-1);

			case 0x08:				/* ^H  - backspace	*/
			case 0x7F:				/* DEL - backspace	*/
				if (n) {
					--p;
					FUNC1(erase_seq);
					col--;
					n--;
					}
				continue;

			default:
			/*
			 * Must be a normal character then
			 */
			if (n < (AT91C_CB_SIZE -2)) 
			{
				++col;		/* echo input		*/
				FUNC2(c);
				*p++ = c;
				++n;
			} 
			else 
			{			/* Buffer full		*/
				FUNC2('\a');
			}
		}
	}
}