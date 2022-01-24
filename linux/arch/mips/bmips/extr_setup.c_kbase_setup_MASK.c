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
 scalar_t__ FUNC0 () ; 
 scalar_t__ BMIPS_RELO_VECTOR_CONTROL_1 ; 
 int RELO_NORMAL_VEC ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int ebase ; 
 int kbase ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(kbase | RELO_NORMAL_VEC,
		     FUNC0() + BMIPS_RELO_VECTOR_CONTROL_1);
	ebase = kbase;
}