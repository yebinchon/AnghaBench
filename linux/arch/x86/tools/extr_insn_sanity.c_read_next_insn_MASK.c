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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_INSN_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_file ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(unsigned char *insn_buff)
{
	char buf[256]  = "", *tmp;
	int i;

	tmp = FUNC2(buf, FUNC0(buf), input_file);
	if (tmp == NULL || FUNC1(input_file))
		return 0;

	for (i = 0; i < MAX_INSN_SIZE; i++) {
		insn_buff[i] = (unsigned char)FUNC3(tmp, &tmp, 16);
		if (*tmp != ' ')
			break;
	}

	return i;
}