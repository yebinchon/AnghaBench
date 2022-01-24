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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int*) ; 

__attribute__((used)) static phys_addr_t FUNC4(void)
{
	struct device_node *np;
	__be32 in_addr[2];

	np = FUNC2(NULL, "internal-regs");
	FUNC0(!np);

	/*
	 * Ask the DT what is the internal register address on this
	 * platform. In the mvebu-mbus DT binding, 0xf0010000
	 * corresponds to the internal register window.
	 */
	in_addr[0] = FUNC1(0xf0010000);
	in_addr[1] = 0x0;

	return FUNC3(np, in_addr);
}