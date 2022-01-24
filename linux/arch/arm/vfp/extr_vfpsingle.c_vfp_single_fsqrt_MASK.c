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
struct vfp_single {scalar_t__ sign; int exponent; int significand; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_SINGLE_LOW_BITS_MASK ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct vfp_single*,struct vfp_single*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 struct vfp_single vfp_single_default_qnan ; 
 int /*<<< orphan*/  FUNC5 (char*,struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC6 (struct vfp_single*) ; 
 int FUNC7 (int,struct vfp_single*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vfp_single*) ; 
 int FUNC9 (struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC10 (struct vfp_single*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC11(int sd, int unused, s32 m, u32 fpscr)
{
	struct vfp_single vsm, vsd;
	int ret, tm;

	FUNC10(&vsm, m);
	tm = FUNC9(&vsm);
	if (tm & (VFP_NAN|VFP_INFINITY)) {
		struct vfp_single *vsp = &vsd;

		if (tm & VFP_NAN)
			ret = FUNC2(vsp, &vsm, NULL, fpscr);
		else if (vsm.sign == 0) {
 sqrt_copy:
			vsp = &vsm;
			ret = 0;
		} else {
 sqrt_invalid:
			vsp = &vfp_single_default_qnan;
			ret = FPSCR_IOC;
		}
		FUNC3(FUNC8(vsp), sd);
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
		FUNC6(&vsm);

	/*
	 * sqrt(<0) = invalid
	 */
	if (vsm.sign)
		goto sqrt_invalid;

	FUNC5("sqrt", &vsm);

	/*
	 * Estimate the square root.
	 */
	vsd.sign = 0;
	vsd.exponent = ((vsm.exponent - 127) >> 1) + 127;
	vsd.significand = FUNC1(vsm.exponent, vsm.significand) + 2;

	FUNC5("sqrt estimate", &vsd);

	/*
	 * And now adjust.
	 */
	if ((vsd.significand & VFP_SINGLE_LOW_BITS_MASK) <= 5) {
		if (vsd.significand < 2) {
			vsd.significand = 0xffffffff;
		} else {
			u64 term;
			s64 rem;
			vsm.significand <<= !(vsm.exponent & 1);
			term = (u64)vsd.significand * vsd.significand;
			rem = ((u64)vsm.significand << 32) - term;

			FUNC0("VFP: term=%016llx rem=%016llx\n", term, rem);

			while (rem < 0) {
				vsd.significand -= 1;
				rem += ((u64)vsd.significand << 1) | 1;
			}
			vsd.significand |= rem != 0;
		}
	}
	vsd.significand = FUNC4(vsd.significand, 1);

	return FUNC7(sd, &vsd, fpscr, 0, "fsqrt");
}