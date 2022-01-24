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
typedef  int /*<<< orphan*/  LinkedMem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hMapObject ; 
 int /*<<< orphan*/ * lm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3()
{
	if(!lm)
		return;
#ifdef WIN32
	UnmapViewOfFile(lm);
	CloseHandle(hMapObject);
	hMapObject = NULL;
#else
	FUNC2(lm, sizeof(LinkedMem));
#endif
	lm = NULL;
}