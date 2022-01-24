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
 int STATUSF_IP2 ; 
 int STATUSF_IP3 ; 
 int STATUSF_IP4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ octeon_irq_use_ip4 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC1();
	FUNC2();

	/* Enable the CIU lines */
	FUNC3(STATUSF_IP3 | STATUSF_IP2);
	if (octeon_irq_use_ip4)
		FUNC3(STATUSF_IP4);
	else
		FUNC0(STATUSF_IP4);
}