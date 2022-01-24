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
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int /*<<< orphan*/  INDENT_ELIF ; 
 int INDENT_ELSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC4(source_t *source)
{
	signed long int value;
	int type, skip;

	FUNC1(source, &type, &skip);
	if (!type || type == INDENT_ELSE)
	{
		FUNC3(source, "misplaced #elif");
		return qfalse;
	} //end if
	if (!FUNC0(source, &value, NULL, qtrue)) return qfalse;
	skip = (value == 0);
	FUNC2(source, INDENT_ELIF, skip);
	return qtrue;
}