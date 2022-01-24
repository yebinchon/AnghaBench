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
 int /*<<< orphan*/  B ; 
 scalar_t__ B_c ; 
 int B_s ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FP_CLS_NAN ; 
 int /*<<< orphan*/  FP_CUR_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  __FPU_FPCSR ; 

void FUNC4(void *ft, void *fa, void *fb)
{

	FUNC1(A);
	FUNC1(B);
	FUNC1(R);
	FP_DECL_EX;

	FUNC3(A, fa);
	FUNC3(B, fb);

	if (B_c != FP_CLS_NAN)
		B_s ^= 1;

	FUNC0(R, A, B);

	FUNC2(ft, R);

	__FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}