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
typedef  int u64 ;
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_PHBS ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct device_node*,char*,int,int*) ; 
 int FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  phb_bitmap ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device_node *dn)
{
	int ret, phb_id = -1;
	u32 prop_32;
	u64 prop;

	/*
	 * Try fixed PHB numbering first, by checking archs and reading
	 * the respective device-tree properties. Firstly, try powernv by
	 * reading "ibm,opal-phbid", only present in OPAL environment.
	 */
	ret = FUNC3(dn, "ibm,opal-phbid", &prop);
	if (ret) {
		ret = FUNC2(dn, "reg", 1, &prop_32);
		prop = prop_32;
	}

	if (!ret)
		phb_id = (int)(prop & (MAX_PHBS - 1));

	/* We need to be sure to not use the same PHB number twice. */
	if ((phb_id >= 0) && !FUNC5(phb_id, phb_bitmap))
		return phb_id;

	/*
	 * If not pseries nor powernv, or if fixed PHB numbering tried to add
	 * the same PHB number twice, then fallback to dynamic PHB numbering.
	 */
	phb_id = FUNC1(phb_bitmap, MAX_PHBS);
	FUNC0(phb_id >= MAX_PHBS);
	FUNC4(phb_id, phb_bitmap);

	return phb_id;
}