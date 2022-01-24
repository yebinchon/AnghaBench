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
typedef  int /*<<< orphan*/  u32 ;
struct vfp_double {scalar_t__ exponent; int /*<<< orphan*/  sign; scalar_t__ significand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfp_double*,struct vfp_double*,struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vfp_double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(int dd, int dn, int dm, u32 fpscr)
{
	struct vfp_double vdd, vdn, vdm;
	u32 exceptions;

	FUNC3(&vdn, FUNC4(dn));
	if (vdn.exponent == 0 && vdn.significand)
		FUNC1(&vdn);

	FUNC3(&vdm, FUNC4(dm));
	if (vdm.exponent == 0 && vdm.significand)
		FUNC1(&vdm);

	/*
	 * Subtraction is like addition, but with a negated operand.
	 */
	vdm.sign = FUNC5(vdm.sign);

	exceptions = FUNC0(&vdd, &vdn, &vdm, fpscr);

	return FUNC2(dd, &vdd, fpscr, exceptions, "fsub");
}