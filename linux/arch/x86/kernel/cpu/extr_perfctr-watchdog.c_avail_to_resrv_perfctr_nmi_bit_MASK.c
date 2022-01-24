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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NMI_MAX_COUNTER_BITS ; 
 int /*<<< orphan*/  perfctr_nmi_owner ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC2(unsigned int counter)
{
	FUNC0(counter > NMI_MAX_COUNTER_BITS);

	return !FUNC1(counter, perfctr_nmi_owner);
}