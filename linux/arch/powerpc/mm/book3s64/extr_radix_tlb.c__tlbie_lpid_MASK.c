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
#define  RIC_FLUSH_ALL 130 
#define  RIC_FLUSH_PWC 129 
#define  RIC_FLUSH_TLB 128 
 int /*<<< orphan*/  FUNC0 (unsigned long,int const) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static inline void FUNC2(unsigned long lpid, unsigned long ric)
{
	asm volatile("ptesync": : :"memory");

	/*
	 * Workaround the fact that the "ric" argument to __tlbie_pid
	 * must be a compile-time contraint to match the "i" constraint
	 * in the asm statement.
	 */
	switch (ric) {
	case RIC_FLUSH_TLB:
		FUNC0(lpid, RIC_FLUSH_TLB);
		FUNC1(lpid);
		break;
	case RIC_FLUSH_PWC:
		FUNC0(lpid, RIC_FLUSH_PWC);
		break;
	case RIC_FLUSH_ALL:
	default:
		FUNC0(lpid, RIC_FLUSH_ALL);
		FUNC1(lpid);
	}
	asm volatile("eieio; tlbsync; ptesync": : :"memory");
}