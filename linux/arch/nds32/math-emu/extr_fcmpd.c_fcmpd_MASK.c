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
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 long SF_CGT ; 
 int /*<<< orphan*/  SF_CUN ; 

int FUNC3(void *ft, void *fa, void *fb, int cmpop)
{
	FUNC1(A);
	FUNC1(B);
	FP_DECL_EX;
	long cmp;

	FUNC2(A, fa);
	FUNC2(B, fb);

	FUNC0(cmp, A, B, SF_CUN);
	cmp += 2;
	if (cmp == SF_CGT)
		*(long *)ft = 0;
	else
		*(long *)ft = (cmp & cmpop) ? 1 : 0;

	return 0;
}