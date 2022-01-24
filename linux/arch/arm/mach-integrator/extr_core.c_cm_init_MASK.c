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

/* Variables and functions */
 int /*<<< orphan*/  cm_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cm_match ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	struct device_node *cm = FUNC1(NULL, cm_match);

	if (!cm) {
		FUNC3("no core module node found in device tree\n");
		return;
	}
	cm_base = FUNC2(cm, 0);
	if (!cm_base) {
		FUNC3("could not remap core module\n");
		return;
	}
	FUNC0();
}