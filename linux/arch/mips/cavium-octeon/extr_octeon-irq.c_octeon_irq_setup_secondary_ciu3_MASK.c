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
struct octeon_ciu3_info {int dummy; } ;

/* Variables and functions */
 int STATUSF_IP2 ; 
 int STATUSF_IP3 ; 
 int STATUSF_IP4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct octeon_ciu3_info** octeon_ciu3_info_per_node ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_ciu3_info*) ; 
 scalar_t__ octeon_irq_use_ip4 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void)
{
	struct octeon_ciu3_info *ciu3_info;

	ciu3_info = octeon_ciu3_info_per_node[FUNC1()];
	FUNC3(ciu3_info);
	FUNC2();

	/* Enable the CIU lines */
	FUNC4(STATUSF_IP3 | STATUSF_IP2);
	if (octeon_irq_use_ip4)
		FUNC4(STATUSF_IP4);
	else
		FUNC0(STATUSF_IP4);
}