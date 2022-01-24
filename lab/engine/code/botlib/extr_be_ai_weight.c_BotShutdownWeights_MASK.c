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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_WEIGHT_FILES ; 
 int /*<<< orphan*/ ** weightFileList ; 

void FUNC1(void)
{
	int i;

	for( i = 0; i < MAX_WEIGHT_FILES; i++ )
	{
		if (weightFileList[i])
		{
			FUNC0(weightFileList[i]);
			weightFileList[i] = NULL;
		} //end if
	} //end for
}