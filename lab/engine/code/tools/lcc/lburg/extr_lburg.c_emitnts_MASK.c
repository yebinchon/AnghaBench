#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ern; struct TYPE_3__* link; int /*<<< orphan*/  pattern; } ;
typedef  TYPE_1__* Rule ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (void*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(Rule rules, int nrules) {
	Rule r;
	int i, j, *nts = FUNC0((nrules + 1)*sizeof *nts);
	char **str = FUNC0((nrules + 1)*sizeof *str);

	for (i = 0, r = rules; r; r = r->link) {
		char buf[1024];
		*FUNC1(r->pattern, buf) = 0;
		for (j = 0; str[j] && FUNC3(str[j], buf); j++)
			;
		if (str[j] == NULL) {
			FUNC2("static short %Pnts_%d[] = { %s0 };\n", j, buf);
			str[j] = FUNC4(FUNC0(FUNC5(buf) + 1), buf);
		}
		nts[i++] = j;
	}
	FUNC2("\nstatic short *%Pnts[] = {\n");
	for (i = j = 0, r = rules; r; r = r->link) {
		for ( ; j < r->ern; j++)
			FUNC2("%10,%1/* %d */\n", j);
		FUNC2("%1%Pnts_%d,%1/* %d */\n", nts[i++], j++);
	}
	FUNC2("};\n\n");
}