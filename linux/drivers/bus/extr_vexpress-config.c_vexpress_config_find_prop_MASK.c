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
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (struct device_node*,char const*,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct device_node *node,
		const char *name, u32 *val)
{
	/* Default value */
	*val = 0;

	FUNC1(node);
	while (node) {
		if (FUNC3(node, name, val) == 0) {
			FUNC2(node);
			return;
		}
		node = FUNC0(node);
	}
}