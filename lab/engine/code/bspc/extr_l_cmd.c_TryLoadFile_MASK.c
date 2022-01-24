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
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 

int    FUNC5 (char *filename, void **bufferptr)
{
	FILE	*f;
	int    length;
	void    *buffer;

	*bufferptr = NULL;

	f = FUNC4 (filename, "rb");
	if (!f)
		return -1;
	length = FUNC1 (f);
	buffer = FUNC0(length+1);
	((char *)buffer)[length] = 0;
	FUNC2 (f, buffer, length);
	FUNC3 (f);

	*bufferptr = buffer;
	return length;
}