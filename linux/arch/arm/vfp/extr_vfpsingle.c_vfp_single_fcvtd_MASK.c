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
typedef  int /*<<< orphan*/  u32 ;
struct vfp_single {int exponent; scalar_t__ significand; int /*<<< orphan*/  sign; } ;
struct vfp_double {int significand; int exponent; int /*<<< orphan*/  sign; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_DOUBLE_SIGNIFICAND_QNAN ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_QNAN ; 
 int VFP_SNAN ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,struct vfp_double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_single*) ; 
 int FUNC4 (struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_single*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(int dd, int unused, s32 m, u32 fpscr)
{
	struct vfp_single vsm;
	struct vfp_double vdd;
	int tm;
	u32 exceptions = 0;

	FUNC5(&vsm, m);

	tm = FUNC4(&vsm);

	/*
	 * If we have a signalling NaN, signal invalid operation.
	 */
	if (tm == VFP_SNAN)
		exceptions = FPSCR_IOC;

	if (tm & VFP_DENORMAL)
		FUNC3(&vsm);

	vdd.sign = vsm.sign;
	vdd.significand = (u64)vsm.significand << 32;

	/*
	 * If we have an infinity or NaN, the exponent must be 2047.
	 */
	if (tm & (VFP_INFINITY|VFP_NAN)) {
		vdd.exponent = 2047;
		if (tm == VFP_QNAN)
			vdd.significand |= VFP_DOUBLE_SIGNIFICAND_QNAN;
		goto pack_nan;
	} else if (tm & VFP_ZERO)
		vdd.exponent = 0;
	else
		vdd.exponent = vsm.exponent + (1023 - 127);

	return FUNC0(dd, &vdd, fpscr, exceptions, "fcvtd");

 pack_nan:
	FUNC2(FUNC1(&vdd), dd);
	return exceptions;
}