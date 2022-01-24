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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct device_node*,char*,int*) ; 
 int FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

int FUNC7(struct device_node *np, uint64_t *id)
{
	struct device_node *parent = np;
	u32 bdfn;
	u64 phbid;
	int ret;

	ret = FUNC5(np, "reg", &bdfn);
	if (ret)
		return -ENXIO;

	bdfn = ((bdfn & 0x00ffff00) >> 8);
	while ((parent = FUNC3(parent))) {
		if (!FUNC0(parent)) {
			FUNC4(parent);
			break;
		}

		if (!FUNC2(parent, "ibm,ioda2-phb") &&
		    !FUNC2(parent, "ibm,ioda3-phb")) {
			FUNC4(parent);
			continue;
		}

		ret = FUNC6(parent, "ibm,opal-phbid", &phbid);
		if (ret) {
			FUNC4(parent);
			return -ENXIO;
		}

		*id = FUNC1(phbid, bdfn);
		return 0;
	}

	return -ENODEV;
}