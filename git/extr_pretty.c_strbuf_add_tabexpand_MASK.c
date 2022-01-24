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

/* Variables and functions */
 char* FUNC0 (char const*,char,int) ; 
 int FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char,int) ; 

__attribute__((used)) static void FUNC4(struct strbuf *sb, int tabwidth,
				 const char *line, int linelen)
{
	const char *tab;

	while ((tab = FUNC0(line, '\t', linelen)) != NULL) {
		int width = FUNC1(line, tab);

		/*
		 * If it wasn't well-formed utf8, or it
		 * had characters with badly defined
		 * width (control characters etc), just
		 * give up on trying to align things.
		 */
		if (width < 0)
			break;

		/* Output the data .. */
		FUNC2(sb, line, tab - line);

		/* .. and the de-tabified tab */
		FUNC3(sb, ' ', tabwidth - (width % tabwidth));

		/* Skip over the printed part .. */
		linelen -= tab + 1 - line;
		line = tab + 1;
	}

	/*
	 * Print out everything after the last tab without
	 * worrying about width - there's nothing more to
	 * align.
	 */
	FUNC2(sb, line, linelen);
}