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
 int Aflag ; 
 int BUFSIZE ; 
 int MAXTOKEN ; 
 int NEWLINE ; 
 int FUNC0 (int) ; 
 int* cp ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char FUNC3 () ; 
 int* limit ; 
 int* map ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void *FUNC6(int q, void *put(int c, void *cl), void *cl) {
	int n = 0, nbad = 0;

	do {
		cp++;
		while (*cp != q) {
			int c;
			if (map[*cp]&NEWLINE) {
				if (cp < limit)
					break;
				cp++;
				FUNC4();
				if (cp == limit)
					break;
				continue;
			}
			c = *cp++;
			if (c == '\\') {
				if (map[*cp]&NEWLINE) {
					if (cp < limit)
						break;
					cp++;
					FUNC4();
				}
				if (limit - cp < MAXTOKEN)
					FUNC2();
				c = FUNC0(q);
			} else if (c < 0 || c > 255 || map[c] == 0)
				nbad++;
			if (n++ < BUFSIZE)
				cl = put(c, cl);
		}
		if (*cp == q)
			cp++;
		else
			FUNC1("missing %c\n", q);
	} while (q == '"' && FUNC3() == '"');
	cl = put(0, cl);
	if (n >= BUFSIZE)
		FUNC1("%s literal too long\n", q == '"' ? "string" : "character");
	if (Aflag >= 2 && q == '"' && n > 509)
		FUNC5("more than 509 characters in a string literal\n");
	if (Aflag >= 2 && nbad > 0)
		FUNC5("%s literal contains non-portable characters\n",
			q == '"' ? "string" : "character");
	return cl;
}