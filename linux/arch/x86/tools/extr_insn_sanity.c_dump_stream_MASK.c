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
struct insn {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct insn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  input_file ; 
 char* prog ; 
 int seed ; 

__attribute__((used)) static void FUNC2(FILE *fp, const char *msg, unsigned long nr_iter,
			unsigned char *insn_buff, struct insn *insn)
{
	int i;

	FUNC1(fp, "%s:\n", msg);

	FUNC0(fp, insn);

	FUNC1(fp, "You can reproduce this with below command(s);\n");

	/* Input a decoded instruction sequence directly */
	FUNC1(fp, " $ echo ");
	for (i = 0; i < MAX_INSN_SIZE; i++)
		FUNC1(fp, " %02x", insn_buff[i]);
	FUNC1(fp, " | %s -i -\n", prog);

	if (!input_file) {
		FUNC1(fp, "Or \n");
		/* Give a seed and iteration number */
		FUNC1(fp, " $ %s -s 0x%x,%lu\n", prog, seed, nr_iter);
	}
}