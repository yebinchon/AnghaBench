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
 int /*<<< orphan*/  MODE_DATA ; 
 int /*<<< orphan*/  MODE_INST ; 
 int PVC_LINELEN ; 
 int PVC_NLINES ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

void FUNC1(const unsigned char *str, u8 addr, int line)
{
	int i = 0;

	if (line > 0 && (PVC_NLINES > 1))
		addr += 0x40 * line;
	FUNC0(0x80 | addr, MODE_INST);

	while (*str != 0 && i < PVC_LINELEN) {
		FUNC0(*str++, MODE_DATA);
		i++;
	}
}