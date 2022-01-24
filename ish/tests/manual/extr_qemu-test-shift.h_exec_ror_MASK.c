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
 int /*<<< orphan*/  CC_C ; 
 int /*<<< orphan*/  FUNC0 (long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (long,long,long,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 

void FUNC5(long s2, long s0, long s1)
{
    s2 = FUNC4(s2);
    s0 = FUNC4(s0);
#if defined(__x86_64__)
    FUNC2(s2, s0, s1, 0);
#endif
    FUNC1(s2, s0, s1, 0);
#ifdef OP_SHIFTD
    //exec_opw(s2, s0, s1, 0);
#else
    FUNC3(s2, s0, s1, 0);
#endif
#ifndef OP_NOBYTE
    FUNC0(s0, s1, 0);
#endif
#ifdef OP_CC
#if defined(__x86_64__)
    exec_opq(s2, s0, s1, CC_C);
#endif
    exec_opl(s2, s0, s1, CC_C);
    exec_opw(s2, s0, s1, CC_C);
    exec_opb(s0, s1, CC_C);
#endif
}