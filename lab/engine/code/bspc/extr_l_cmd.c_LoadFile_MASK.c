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
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int    FUNC6 (char *filename, void **bufferptr, int offset, int length)
{
	FILE	*f;
	void    *buffer;

	f = FUNC2(filename);
	FUNC5(f, offset, SEEK_SET);
	if (!length) length = FUNC1(f);
	buffer = FUNC0(length+1);
	((char *)buffer)[length] = 0;
	FUNC3(f, buffer, length);
	FUNC4(f);

	*bufferptr = buffer;
	return length;
}