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
struct software_node {struct property_entry* properties; } ;
struct property_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct property_entry*) ; 
 int FUNC1 (struct property_entry*) ; 
 struct property_entry* FUNC2 (struct property_entry const*) ; 

__attribute__((used)) static int
FUNC3(struct software_node *node,
				  const struct property_entry *properties)
{
	struct property_entry *props;

	props = FUNC2(properties);
	if (FUNC0(props))
		return FUNC1(props);

	node->properties = props;

	return 0;
}