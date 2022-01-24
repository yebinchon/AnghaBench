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
 int FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

void FUNC4(unsigned char *code, unsigned long len)
{
	char buffer[64], *ptr;
	int opsize, i;

	while (len) {
		ptr = buffer;
		opsize = FUNC0(*code);
		if (opsize > len)
			break;
		ptr += FUNC3(ptr, "%p: ", code);
		for (i = 0; i < opsize; i++)
			ptr += FUNC3(ptr, "%02x", code[i]);
		*ptr++ = '\t';
		if (i < 4)
			*ptr++ = '\t';
		ptr += FUNC1(ptr, code, (unsigned long) code);
		*ptr++ = '\n';
		*ptr++ = 0;
		FUNC2("%s", buffer);
		code += opsize;
		len -= opsize;
	}
}