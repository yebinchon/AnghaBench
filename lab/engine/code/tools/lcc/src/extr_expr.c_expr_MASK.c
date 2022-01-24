#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Tree ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  ID 129 
#define  IF 128 
 int /*<<< orphan*/  RIGHT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 char FUNC1 () ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char t ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

Tree FUNC7(int tok) {
	static char stop[] = { IF, ID, '}', 0 };
	Tree p = FUNC0(0);

	while (t == ',') {
		Tree q;
		t = FUNC1();
		q = FUNC2(FUNC0(0));
		p = FUNC5(RIGHT, q->type, FUNC3(FUNC6(p)), q);
	}
	if (tok)	
		FUNC4(tok, stop);
	return p;
}