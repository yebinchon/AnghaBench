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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(__be32 parent_phandle, __be32 drc_index)
{
	struct device_node *dn;
	struct device_node *parent_dn;
	int rc;

	parent_dn = FUNC4(FUNC0(parent_phandle));
	if (!parent_dn)
		return -ENOENT;

	dn = FUNC2(drc_index, parent_dn);
	if (!dn) {
		FUNC5(parent_dn);
		return -ENOENT;
	}

	rc = FUNC1(dn, parent_dn);
	if (rc)
		FUNC3(dn);

	FUNC5(parent_dn);
	return rc;
}