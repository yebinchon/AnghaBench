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
 int MAX_INSN_SIZE ; 
 scalar_t__ input_file ; 
 int FUNC0 () ; 
 int FUNC1 (unsigned char*) ; 

__attribute__((used)) static int FUNC2(unsigned char *insn_buff)
{
	int i;

	if (input_file)
		return FUNC1(insn_buff);

	/* Fills buffer with random binary up to MAX_INSN_SIZE */
	for (i = 0; i < MAX_INSN_SIZE - 1; i += 2)
		*(unsigned short *)(&insn_buff[i]) = FUNC0() & 0xffff;

	while (i < MAX_INSN_SIZE)
		insn_buff[i++] = FUNC0() & 0xff;

	return i;
}