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
 int /*<<< orphan*/  FUNC0 (int,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * board ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char,char*) ; 

int
FUNC4(char ch, char *arg)
{

	FUNC0(1,"parsing board option: -%c %s", ch, arg);

	if (board != NULL) {
		FUNC1("only one board option allowed");
		return -1;
	}

	if (FUNC3(ch, arg))
		return -1;

	board = FUNC2(arg);
	if (board == NULL){
		FUNC1("invalid/unknown board specified: %s", arg);
		return -1;
	}

	return 0;
}