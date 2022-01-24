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
 int /*<<< orphan*/  B ; 
 scalar_t__ B_c ; 
 scalar_t__ FP_CLS_ZERO ; 
 int /*<<< orphan*/  FP_CUR_EXCEPTIONS ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_EX_DIVZERO ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  __FPU_FPCSR ; 

void FUNC5(void *ft, void *fa, void *fb)
{
	FUNC0(A);
	FUNC0(B);
	FUNC0(R);
	FP_DECL_EX;

	FUNC4(A, fa);
	FUNC4(B, fb);

	if (B_c == FP_CLS_ZERO && A_c != FP_CLS_ZERO)
		FUNC3(FP_EX_DIVZERO);

	FUNC1(R, A, B);

	FUNC2(ft, R);

	__FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}