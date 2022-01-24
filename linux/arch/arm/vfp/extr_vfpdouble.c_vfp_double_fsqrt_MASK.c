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
struct vfp_double {scalar_t__ sign; int exponent; int significand; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_DOUBLE_LOW_BITS_MASK ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int,int /*<<< orphan*/ ,int,int) ; 
 struct vfp_double vfp_double_default_qnan ; 
 int /*<<< orphan*/  FUNC4 (char*,struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_double*) ; 
 int FUNC6 (int,struct vfp_double*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfp_double*) ; 
 int FUNC8 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct vfp_double*,struct vfp_double*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int,int) ; 

__attribute__((used)) static u32 FUNC16(int dd, int unused, int dm, u32 fpscr)
{
	struct vfp_double vdm, vdd;
	int ret, tm;

	FUNC9(&vdm, FUNC12(dm));
	tm = FUNC8(&vdm);
	if (tm & (VFP_NAN|VFP_INFINITY)) {
		struct vfp_double *vdp = &vdd;

		if (tm & VFP_NAN)
			ret = FUNC13(vdp, &vdm, NULL, fpscr);
		else if (vdm.sign == 0) {
 sqrt_copy:
			vdp = &vdm;
			ret = 0;
		} else {
 sqrt_invalid:
			vdp = &vfp_double_default_qnan;
			ret = FPSCR_IOC;
		}
		FUNC14(FUNC7(vdp), dd);
		return ret;
	}

	/*
	 * sqrt(+/- 0) == +/- 0
	 */
	if (tm & VFP_ZERO)
		goto sqrt_copy;

	/*
	 * Normalise a denormalised number
	 */
	if (tm & VFP_DENORMAL)
		FUNC5(&vdm);

	/*
	 * sqrt(<0) = invalid
	 */
	if (vdm.sign)
		goto sqrt_invalid;

	FUNC4("sqrt", &vdm);

	/*
	 * Estimate the square root.
	 */
	vdd.sign = 0;
	vdd.exponent = ((vdm.exponent - 1023) >> 1) + 1023;
	vdd.significand = (u64)FUNC11(vdm.exponent, vdm.significand >> 32) << 31;

	FUNC4("sqrt estimate1", &vdd);

	vdm.significand >>= 1 + (vdm.exponent & 1);
	vdd.significand += 2 + FUNC10(vdm.significand, 0, vdd.significand);

	FUNC4("sqrt estimate2", &vdd);

	/*
	 * And now adjust.
	 */
	if ((vdd.significand & VFP_DOUBLE_LOW_BITS_MASK) <= 5) {
		if (vdd.significand < 2) {
			vdd.significand = ~0ULL;
		} else {
			u64 termh, terml, remh, reml;
			vdm.significand <<= 2;
			FUNC1(&termh, &terml, vdd.significand, vdd.significand);
			FUNC3(&remh, &reml, vdm.significand, 0, termh, terml);
			while ((s64)remh < 0) {
				vdd.significand -= 1;
				FUNC2(&termh, &terml, vdd.significand);
				terml |= 1;
				FUNC0(&remh, &reml, remh, reml, termh, terml);
			}
			vdd.significand |= (remh | reml) != 0;
		}
	}
	vdd.significand = FUNC15(vdd.significand, 1);

	return FUNC6(dd, &vdd, fpscr, 0, "fsqrt");
}