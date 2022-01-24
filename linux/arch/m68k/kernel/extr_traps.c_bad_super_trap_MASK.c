#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int vector; int format; int pc; } ;
struct TYPE_4__ {unsigned short ssw; int baddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_5__ {TYPE_1__ fmtb; } ;
struct frame {TYPE_3__ ptregs; TYPE_2__ un; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CPU_IS_020_OR_030 ; 
 unsigned short DF ; 
 unsigned short DFC ; 
 unsigned short RB ; 
 unsigned short RC ; 
 unsigned short RW ; 
 int VEC_ADDRERR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * space_names ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * vec_names ; 

void FUNC5 (struct frame *fp)
{
	int vector = (fp->ptregs.vector >> 2) & 0xff;

	FUNC1();
	if (vector < FUNC0(vec_names))
		FUNC3("*** %s ***   FORMAT=%X\n",
			vec_names[vector],
			fp->ptregs.format);
	else
		FUNC3("*** Exception %d ***   FORMAT=%X\n",
			vector, fp->ptregs.format);
	if (vector == VEC_ADDRERR && CPU_IS_020_OR_030) {
		unsigned short ssw = fp->un.fmtb.ssw;

		FUNC3("SSW=%#06x  ", ssw);

		if (ssw & RC)
			FUNC3("Pipe stage C instruction fault at %#010lx\n",
				(fp->ptregs.format) == 0xA ?
				fp->ptregs.pc + 2 : fp->un.fmtb.baddr - 2);
		if (ssw & RB)
			FUNC3("Pipe stage B instruction fault at %#010lx\n",
				(fp->ptregs.format) == 0xA ?
				fp->ptregs.pc + 4 : fp->un.fmtb.baddr);
		if (ssw & DF)
			FUNC3("Data %s fault at %#010lx in %s (pc=%#lx)\n",
				ssw & RW ? "read" : "write",
				fp->un.fmtb.daddr, space_names[ssw & DFC],
				fp->ptregs.pc);
	}
	FUNC3("Current process id is %d\n", FUNC4(current));
	FUNC2("BAD KERNEL TRAP", &fp->ptregs, 0);
}