#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; struct TYPE_5__* link; } ;
typedef  TYPE_1__* List ;

/* Variables and functions */
 int ac ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char** av ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(char *cmd[], List a, List b, List c) {
	int i, j;
	List lists[3];

	lists[0] = a;
	lists[1] = b;
	lists[2] = c;
	for (i = j = 0; cmd[i]; i++) {
		char *s = FUNC4(cmd[i], '$');
		if (s && FUNC2(s[1])) {
			int k = s[1] - '0';
			FUNC1(k >=1 && k <= 3);
			if ((b = lists[k-1])) {
				b = b->link;
				av[j] = FUNC0(FUNC5(cmd[i]) + FUNC5(b->str) - 1);
				FUNC6(av[j], cmd[i], s - cmd[i]);
				av[j][s-cmd[i]] = '\0';
				FUNC3(av[j], b->str);
				FUNC3(av[j++], s + 2);
				while (b != lists[k-1]) {
					b = b->link;
					FUNC1(j < ac);
					av[j++] = b->str;
				};
			}
		} else if (*cmd[i]) {
			FUNC1(j < ac);
			av[j++] = cmd[i];
		}
	}
	av[j] = NULL;
}