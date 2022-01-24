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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

phys_addr_t FUNC3(unsigned long x)
{
	FUNC0(!FUNC1(x),
	     "virt_to_phys used for non-linear address: %pK (%pS)\n",
	      (void *)x,
	      (void *)x);

	return FUNC2(x);
}