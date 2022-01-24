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
 scalar_t__ TCSR0 ; 
 unsigned long TCSR_ARHT ; 
 unsigned long TCSR_ENIT ; 
 unsigned long TCSR_ENT ; 
 unsigned long TCSR_LOAD ; 
 unsigned long TCSR_TINT ; 
 unsigned long TCSR_UDT ; 
 scalar_t__ TLR0 ; 
 scalar_t__ timer_baseaddr ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(unsigned long load_val)
{
	if (!load_val)
		load_val = 1;
	/* loading value to timer reg */
	FUNC0(load_val, timer_baseaddr + TLR0);

	/* load the initial value */
	FUNC0(TCSR_LOAD, timer_baseaddr + TCSR0);

	FUNC0(TCSR_TINT|TCSR_ENIT|TCSR_ENT|TCSR_ARHT|TCSR_UDT,
		 timer_baseaddr + TCSR0);
}