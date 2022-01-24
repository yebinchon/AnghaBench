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
typedef  int u_int ;

/* Variables and functions */
 size_t FPU_TYPE_FLAG_POS ; 
 int PA2_0_FPU_FLAG ; 
 int PA83_UNIMP_EXCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int*) ; 
 int FUNC2 (int,int,int,int*) ; 
 int FUNC3 (int,int,int,int*) ; 
 int FUNC4 (int,int*) ; 
 int FUNC5 (int,int*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

u_int
FUNC11(u_int ir, u_int dummy1, u_int dummy2, u_int fpregs[])
{
	u_int class, subop, major;
	u_int fpu_type_flags;

	/* All FP emulation code assumes that ints are 4-bytes in length */
	FUNC0(sizeof(int) == 4);

	fpu_type_flags=fpregs[FPU_TYPE_FLAG_POS];  /* get fpu type flags */

	major = FUNC7(ir);
	class = FUNC6(ir);
	if (class == 1) {
		if  (fpu_type_flags & PA2_0_FPU_FLAG)
			subop = FUNC10(ir);
		else
			subop = FUNC9(ir);
	}
	else
		subop = FUNC8(ir);
	switch (major) {
		case 0x0C:
			return(FUNC2(ir,class,subop,fpregs));
		case 0x0E:
			return(FUNC3(ir,class,subop,fpregs));
		case 0x06:
			return(FUNC1(ir,fpregs));
		case 0x26:
			return(FUNC4(ir,fpregs));
		case 0x2E:
			return(FUNC5(ir,fpregs));
		default:
			return(PA83_UNIMP_EXCP);
	}
}