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
struct device_node {int /*<<< orphan*/  full_name; } ;
struct cc_workarea {int /*<<< orphan*/  name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OF_DYNAMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_node *FUNC6(struct cc_workarea *ccwa)
{
	struct device_node *dn;
	const char *name;

	dn = FUNC3(sizeof(*dn), GFP_KERNEL);
	if (!dn)
		return NULL;

	name = (const char *)ccwa + FUNC0(ccwa->name_offset);
	dn->full_name = FUNC2(name, GFP_KERNEL);
	if (!dn->full_name) {
		FUNC1(dn);
		return NULL;
	}

	FUNC5(dn, OF_DYNAMIC);
	FUNC4(dn);

	return dn;
}