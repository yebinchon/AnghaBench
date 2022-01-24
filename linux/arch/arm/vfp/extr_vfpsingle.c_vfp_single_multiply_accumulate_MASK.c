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
typedef  int u32 ;
struct vfp_single {scalar_t__ exponent; void* sign; scalar_t__ significand; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int NEG_MULTIPLY ; 
 int NEG_SUBTRACT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int FUNC3 (struct vfp_single*,struct vfp_single*,struct vfp_single*,int) ; 
 int FUNC4 (struct vfp_single*,struct vfp_single*,struct vfp_single*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_single*) ; 
 int FUNC6 (int,struct vfp_single*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfp_single*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC8(int sd, int sn, s32 m, u32 fpscr, u32 negate, char *func)
{
	struct vfp_single vsd, vsp, vsn, vsm;
	u32 exceptions;
	s32 v;

	v = FUNC1(sn);
	FUNC0("VFP: s%u = %08x\n", sn, v);
	FUNC7(&vsn, v);
	if (vsn.exponent == 0 && vsn.significand)
		FUNC5(&vsn);

	FUNC7(&vsm, m);
	if (vsm.exponent == 0 && vsm.significand)
		FUNC5(&vsm);

	exceptions = FUNC4(&vsp, &vsn, &vsm, fpscr);
	if (negate & NEG_MULTIPLY)
		vsp.sign = FUNC2(vsp.sign);

	v = FUNC1(sd);
	FUNC0("VFP: s%u = %08x\n", sd, v);
	FUNC7(&vsn, v);
	if (vsn.exponent == 0 && vsn.significand)
		FUNC5(&vsn);
	if (negate & NEG_SUBTRACT)
		vsn.sign = FUNC2(vsn.sign);

	exceptions |= FUNC3(&vsd, &vsn, &vsp, fpscr);

	return FUNC6(sd, &vsd, fpscr, exceptions, func);
}