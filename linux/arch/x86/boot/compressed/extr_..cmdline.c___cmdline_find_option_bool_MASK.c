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
typedef  int addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

int FUNC3(unsigned long cmdline_ptr, const char *option)
{
	addr_t cptr;
	char c;
	int pos = 0, wstart = 0;
	const char *opptr = NULL;
	enum {
		st_wordstart,	/* Start of word/after whitespace */
		st_wordcmp,	/* Comparing this word */
		st_wordskip,	/* Miscompare, skip */
	} state = st_wordstart;

	if (!cmdline_ptr)
		return -1;      /* No command line */

	cptr = cmdline_ptr & 0xf;
	FUNC2(cmdline_ptr >> 4);

	while (cptr < 0x10000) {
		c = FUNC1(cptr++);
		pos++;

		switch (state) {
		case st_wordstart:
			if (!c)
				return 0;
			else if (FUNC0(c))
				break;

			state = st_wordcmp;
			opptr = option;
			wstart = pos;
			/* fall through */

		case st_wordcmp:
			if (!*opptr)
				if (!c || FUNC0(c))
					return wstart;
				else
					state = st_wordskip;
			else if (!c)
				return 0;
			else if (c != *opptr++)
				state = st_wordskip;
			break;

		case st_wordskip:
			if (!c)
				return 0;
			else if (FUNC0(c))
				state = st_wordstart;
			break;
		}
	}

	return 0;	/* Buffer overrun */
}