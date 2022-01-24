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
typedef  scalar_t__ u32 ;
struct op {int flags; scalar_t__ (* fn ) (unsigned int,unsigned int,int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FOP_EXT ; 
 scalar_t__ FOP_MASK ; 
 size_t FUNC1 (scalar_t__) ; 
 unsigned int FPSCR_LENGTH_BIT ; 
 scalar_t__ FPSCR_LENGTH_MASK ; 
 scalar_t__ FPSCR_STRIDE_MASK ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int OP_DD ; 
 int OP_SCALAR ; 
 struct op* fops ; 
 struct op* fops_ext ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,scalar_t__,...) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 unsigned int FUNC10 (scalar_t__) ; 

u32 FUNC11(u32 inst, u32 fpscr)
{
	u32 op = inst & FOP_MASK;
	u32 exceptions = 0;
	unsigned int dest;
	unsigned int sn = FUNC10(inst);
	unsigned int sm = FUNC9(inst);
	unsigned int vecitr, veclen, vecstride;
	struct op *fop;

	vecstride = 1 + ((fpscr & FPSCR_STRIDE_MASK) == FPSCR_STRIDE_MASK);

	fop = (op == FOP_EXT) ? &fops_ext[FUNC0(inst)] : &fops[FUNC1(op)];

	/*
	 * fcvtsd takes a dN register number as destination, not sN.
	 * Technically, if bit 0 of dd is set, this is an invalid
	 * instruction.  However, we ignore this for efficiency.
	 * It also only operates on scalars.
	 */
	if (fop->flags & OP_DD)
		dest = FUNC6(inst);
	else
		dest = FUNC8(inst);

	/*
	 * If destination bank is zero, vector length is always '1'.
	 * ARM DDI0100F C5.1.3, C5.3.2.
	 */
	if ((fop->flags & OP_SCALAR) || FUNC2(dest) == 0)
		veclen = 0;
	else
		veclen = fpscr & FPSCR_LENGTH_MASK;

	FUNC4("VFP: vecstride=%u veclen=%u\n", vecstride,
		 (veclen >> FPSCR_LENGTH_BIT) + 1);

	if (!fop->fn)
		goto invalid;

	for (vecitr = 0; vecitr <= veclen; vecitr += 1 << FPSCR_LENGTH_BIT) {
		s32 m = FUNC7(sm);
		u32 except;
		char type;

		type = fop->flags & OP_DD ? 'd' : 's';
		if (op == FOP_EXT)
			FUNC4("VFP: itr%d (%c%u) = op[%u] (s%u=%08x)\n",
				 vecitr >> FPSCR_LENGTH_BIT, type, dest, sn,
				 sm, m);
		else
			FUNC4("VFP: itr%d (%c%u) = (s%u) op[%u] (s%u=%08x)\n",
				 vecitr >> FPSCR_LENGTH_BIT, type, dest, sn,
				 FUNC1(op), sm, m);

		except = fop->fn(dest, sn, m, fpscr);
		FUNC4("VFP: itr%d: exceptions=%08x\n",
			 vecitr >> FPSCR_LENGTH_BIT, except);

		exceptions |= except;

		/*
		 * CHECK: It appears to be undefined whether we stop when
		 * we encounter an exception.  We continue.
		 */
		dest = FUNC2(dest) + ((FUNC3(dest) + vecstride) & 7);
		sn = FUNC2(sn) + ((FUNC3(sn) + vecstride) & 7);
		if (FUNC2(sm) != 0)
			sm = FUNC2(sm) + ((FUNC3(sm) + vecstride) & 7);
	}
	return exceptions;

 invalid:
	return (u32)-1;
}