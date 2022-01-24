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
typedef  scalar_t__ u64 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (struct device*,int /*<<< orphan*/ ,char*,unsigned long long,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct device_node*,int /*<<< orphan*/  const*) ; 

char *FUNC3(struct device *dev, struct device_node *np,
			const char *name)
{
	const __be32 *reg;
	u64 addr;

	/* Do not create a name if there is no clock */
	if (!name)
		return NULL;

	reg = FUNC1(np, "reg", NULL);
	addr = FUNC2(np, reg);
	return FUNC0(dev, GFP_KERNEL, "%llx-%s",
			      (unsigned long long)addr, name);
}