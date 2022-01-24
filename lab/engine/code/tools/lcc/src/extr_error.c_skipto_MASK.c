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
 int EOI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 char* kind ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int t ; 

void FUNC5(int tok, char set[]) {
	int n;
	char *s;

	FUNC0(set);
	for (n = 0; t != EOI && t != tok; t = FUNC3()) {
		for (s = set; *s && kind[t] != *s; s++)
			;
		if (kind[t] == *s)
			break;
		if (n++ == 0)
			FUNC1("skipping");
		if (n <= 8)
			FUNC4();
		else if (n == 9)
			FUNC2(stderr, " ...");
	}
	if (n > 8) {
		FUNC2(stderr, " up to");
		FUNC4();
	}
	if (n > 0)
		FUNC2(stderr, "\n");
}