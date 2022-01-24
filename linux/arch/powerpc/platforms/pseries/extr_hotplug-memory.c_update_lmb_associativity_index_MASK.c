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
typedef  int /*<<< orphan*/  u32 ;
struct property {int dummy; } ;
struct drmem_lmb {int /*<<< orphan*/  aa_index; int /*<<< orphan*/  drc_index; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,struct property*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC4 (char*) ; 
 struct property* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct drmem_lmb *lmb)
{
	struct device_node *parent, *lmb_node, *dr_node;
	struct property *ala_prop;
	const u32 *lmb_assoc;
	u32 aa_index;
	bool found;

	parent = FUNC4("/");
	if (!parent)
		return -ENODEV;

	lmb_node = FUNC1(FUNC0(lmb->drc_index),
					     parent);
	FUNC7(parent);
	if (!lmb_node)
		return -EINVAL;

	lmb_assoc = FUNC6(lmb_node, "ibm,associativity", NULL);
	if (!lmb_assoc) {
		FUNC2(lmb_node);
		return -ENODEV;
	}

	dr_node = FUNC4("/ibm,dynamic-reconfiguration-memory");
	if (!dr_node) {
		FUNC2(lmb_node);
		return -ENODEV;
	}

	ala_prop = FUNC5(dr_node, "ibm,associativity-lookup-arrays",
				    NULL);
	if (!ala_prop) {
		FUNC7(dr_node);
		FUNC2(lmb_node);
		return -ENODEV;
	}

	found = FUNC3(dr_node, ala_prop, lmb_assoc, &aa_index);

	FUNC7(dr_node);
	FUNC2(lmb_node);

	if (!found) {
		FUNC8("Could not find LMB associativity\n");
		return -1;
	}

	lmb->aa_index = aa_index;
	return 0;
}