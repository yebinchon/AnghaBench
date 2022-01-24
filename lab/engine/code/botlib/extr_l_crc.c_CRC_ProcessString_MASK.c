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
 int /*<<< orphan*/  FUNC0 (unsigned short*) ; 
 unsigned short FUNC1 (unsigned short) ; 
 unsigned short* crctable ; 

unsigned short FUNC2(unsigned char *data, int length)
{
	unsigned short crcvalue;
	int i, ind;

	FUNC0(&crcvalue);

	for (i = 0; i < length; i++)
	{
		ind = (crcvalue >> 8) ^ data[i];
		if (ind < 0 || ind > 256) ind = 0;
		crcvalue = (crcvalue << 8) ^ crctable[ind];
	} //end for
	return FUNC1(crcvalue);
}