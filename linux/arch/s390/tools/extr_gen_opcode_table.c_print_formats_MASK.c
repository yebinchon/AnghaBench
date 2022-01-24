#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gen_opcode {int nr; TYPE_1__* insn; } ;
struct TYPE_2__ {char* format; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmpformat ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(struct gen_opcode *desc)
{
	char *format;
	int i, count;

	FUNC1(desc->insn, desc->nr, sizeof(*desc->insn), cmpformat);
	format = "";
	count = 0;
	FUNC0("enum {\n");
	for (i = 0; i < desc->nr; i++) {
		if (!FUNC2(format, desc->insn[i].format))
			continue;
		count++;
		format = desc->insn[i].format;
		FUNC0("\tINSTR_%s,\n", format);
	}
	FUNC0("}; /* %d */\n\n", count);
}