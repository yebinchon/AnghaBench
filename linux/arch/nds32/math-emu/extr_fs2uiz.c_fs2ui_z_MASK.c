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

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 scalar_t__ A_c ; 
 scalar_t__ A_s ; 
 scalar_t__ FP_CLS_INF ; 
 scalar_t__ FP_CLS_NAN ; 
 int /*<<< orphan*/  FP_CUR_EXCEPTIONS ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_EX_INVALID ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  __FPU_FPCSR ; 

void FUNC3(void *ft, void *fa)
{
	unsigned int r;

	FUNC0(A);
	FP_DECL_EX;

	FUNC2(A, fa);

	if (A_c == FP_CLS_INF) {
		*(unsigned int *)ft = (A_s == 0) ? 0xffffffff : 0x00000000;
		__FPU_FPCSR |= FP_EX_INVALID;
	} else if (A_c == FP_CLS_NAN) {
		*(unsigned int *)ft = 0xffffffff;
		__FPU_FPCSR |= FP_EX_INVALID;
	} else {
		FUNC1(r, A, 32, 0);
		__FPU_FPCSR |= FP_CUR_EXCEPTIONS;
		*(unsigned int *)ft = r;
	}

}