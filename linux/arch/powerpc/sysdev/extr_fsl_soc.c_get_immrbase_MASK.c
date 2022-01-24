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
typedef  int u32 ;
struct device_node {int dummy; } ;
typedef  int phys_addr_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int immrbase ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/  const*) ; 

phys_addr_t FUNC5(void)
{
	struct device_node *soc;

	if (immrbase != -1)
		return immrbase;

	soc = FUNC1(NULL, "soc");
	if (soc) {
		int size;
		u32 naddr;
		const __be32 *prop = FUNC2(soc, "#address-cells", &size);

		if (prop && size == 4)
			naddr = FUNC0(prop);
		else
			naddr = 2;

		prop = FUNC2(soc, "ranges", &size);
		if (prop)
			immrbase = FUNC4(soc, prop + naddr);

		FUNC3(soc);
	}

	return immrbase;
}