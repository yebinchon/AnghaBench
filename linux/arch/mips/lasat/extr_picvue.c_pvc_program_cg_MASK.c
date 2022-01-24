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
typedef  int u8 ;

/* Variables and functions */
 int BM_SIZE ; 
 int ENOENT ; 
 int MAX_PROGRAMMABLE_CHARS ; 
 int /*<<< orphan*/  MODE_DATA ; 
 int /*<<< orphan*/  MODE_INST ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

int FUNC1(int charnum, u8 bitmap[BM_SIZE])
{
	int i;
	int addr;

	if (charnum > MAX_PROGRAMMABLE_CHARS)
		return -ENOENT;

	addr = charnum * 8;
	FUNC0(0x40 | addr, MODE_INST);

	for (i = 0; i < BM_SIZE; i++)
		FUNC0(bitmap[i], MODE_DATA);
	return 0;
}