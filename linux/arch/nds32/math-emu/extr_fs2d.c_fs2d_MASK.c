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
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_CUR_EXCEPTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  R ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  __FPU_FPCSR ; 

void FUNC5(void *ft, void *fa)
{
	FUNC2(A);
	FUNC1(R);
	FP_DECL_EX;

	FUNC4(A, fa);

	FUNC0(D, S, 2, 1, R, A);

	FUNC3(ft, R);

	__FPU_FPCSR |= FP_CUR_EXCEPTIONS;
}