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
typedef  void* Tree ;

/* Variables and functions */
 scalar_t__ ASGN ; 
#define  ID 129 
#define  IF 128 
 void* FUNC0 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 void* FUNC2 () ; 
 char FUNC3 () ; 
 void* FUNC4 (int,void*,void*) ; 
 scalar_t__* oper ; 
 int* prec ; 
 char t ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

Tree FUNC7(int tok) {
	static char stop[] = { IF, ID, 0 };
	Tree p = FUNC2();

	if (t == '='
	|| (prec[t] >=  6 && prec[t] <=  8)
	|| (prec[t] >= 11 && prec[t] <= 13)) {
		int op = t;
		t = FUNC3();
		if (oper[op] == ASGN)
			p = FUNC0(ASGN, p, FUNC6(FUNC7(0)));
		else
			{
				FUNC1('=');
				p = FUNC4(op, p, FUNC7(0));
			}
	}
	if (tok)	
		FUNC5(tok, stop);
	return p;
}