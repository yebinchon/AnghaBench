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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

int FUNC5(char *filename)
{
	FILE *pFile = NULL;
	unsigned long sum = 0, res = 0;

	if((pFile = FUNC4(filename, "r")) == NULL)
		return 0;

	if(!FUNC2(pFile))
	{
		FUNC3(pFile);
		return 0;
	}
	if(!FUNC0(pFile, &sum, 1))
	{
		FUNC3(pFile);
		return 0;
	}
	FUNC1(pFile, &res);
	FUNC3(pFile);

	if(sum != res)
		return 0;
	return 1;
}