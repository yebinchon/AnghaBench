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
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np)
{
	const char *model = FUNC1(np, "model", NULL);

	if (model && !FUNC3(model, "SUNW,simba"))
		return 1;

	/* Treat PCI busses lacking ranges property just like
	 * simba.
	 */
	if (FUNC2(np, "pci")) {
		if (!FUNC0(np, "ranges", NULL))
			return 1;
	}

	return 0;
}