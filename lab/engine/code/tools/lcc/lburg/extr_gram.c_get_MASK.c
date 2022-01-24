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
 int EOF ; 
 scalar_t__* bp ; 
 char* buf ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  infp ; 
 int /*<<< orphan*/  outfp ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  yylineno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void) {
	if (*bp == 0) {
		bp = buf;
		*bp = 0;
		if (FUNC0(buf, sizeof buf, infp) == NULL)
			return EOF;
		yylineno++;
		while (buf[0] == '%' && buf[1] == '{' && buf[2] == '\n') {
			for (;;) {
				if (FUNC0(buf, sizeof buf, infp) == NULL) {
					FUNC3("unterminated %{...%}\n");
					return EOF;
				}
				yylineno++;
				if (FUNC2(buf, "%}\n") == 0)
					break;
				FUNC1(buf, outfp);
			}
			if (FUNC0(buf, sizeof buf, infp) == NULL)
				return EOF;
			yylineno++;
		}
	}
	return *bp++;
}