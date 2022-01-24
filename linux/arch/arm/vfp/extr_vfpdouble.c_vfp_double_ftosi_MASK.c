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
typedef  int u64 ;
typedef  int u32 ;
struct vfp_double {int exponent; scalar_t__ sign; int significand; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FPSCR_IDC ; 
 int FPSCR_IOC ; 
 int FPSCR_IXC ; 
 int FPSCR_RMODE_MASK ; 
 int FPSCR_ROUND_MINUSINF ; 
 int FPSCR_ROUND_NEAREST ; 
 int FPSCR_ROUND_PLUSINF ; 
 int FPSCR_ROUND_TOZERO ; 
 int VFP_DENORMAL ; 
 int VFP_NAN ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct vfp_double*) ; 
 int FUNC2 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC6(int sd, int unused, int dm, u32 fpscr)
{
	struct vfp_double vdm;
	u32 d, exceptions = 0;
	int rmode = fpscr & FPSCR_RMODE_MASK;
	int tm;

	FUNC3(&vdm, FUNC4(dm));
	FUNC1("VDM", &vdm);

	/*
	 * Do we have denormalised number?
	 */
	tm = FUNC2(&vdm);
	if (tm & VFP_DENORMAL)
		exceptions |= FPSCR_IDC;

	if (tm & VFP_NAN) {
		d = 0;
		exceptions |= FPSCR_IOC;
	} else if (vdm.exponent >= 1023 + 32) {
		d = 0x7fffffff;
		if (vdm.sign)
			d = ~d;
		exceptions |= FPSCR_IOC;
	} else if (vdm.exponent >= 1023 - 1) {
		int shift = 1023 + 63 - vdm.exponent;	/* 58 */
		u64 rem, incr = 0;

		d = (vdm.significand << 1) >> shift;
		rem = vdm.significand << (65 - shift);

		if (rmode == FPSCR_ROUND_NEAREST) {
			incr = 0x8000000000000000ULL;
			if ((d & 1) == 0)
				incr -= 1;
		} else if (rmode == FPSCR_ROUND_TOZERO) {
			incr = 0;
		} else if ((rmode == FPSCR_ROUND_PLUSINF) ^ (vdm.sign != 0)) {
			incr = ~0ULL;
		}

		if ((rem + incr) < rem && d < 0xffffffff)
			d += 1;
		if (d > 0x7fffffff + (vdm.sign != 0)) {
			d = 0x7fffffff + (vdm.sign != 0);
			exceptions |= FPSCR_IOC;
		} else if (rem)
			exceptions |= FPSCR_IXC;

		if (vdm.sign)
			d = -d;
	} else {
		d = 0;
		if (vdm.exponent | vdm.significand) {
			exceptions |= FPSCR_IXC;
			if (rmode == FPSCR_ROUND_PLUSINF && vdm.sign == 0)
				d = 1;
			else if (rmode == FPSCR_ROUND_MINUSINF && vdm.sign)
				d = -1;
		}
	}

	FUNC0("VFP: ftosi: d(s%d)=%08x exceptions=%08x\n", sd, d, exceptions);

	FUNC5((s32)d, sd);

	return exceptions;
}