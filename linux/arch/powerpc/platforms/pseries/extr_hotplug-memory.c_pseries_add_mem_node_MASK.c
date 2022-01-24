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
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct device_node *np)
{
	const __be32 *regs;
	unsigned long base;
	unsigned int lmb_size;
	int ret = -EINVAL;

	/*
	 * Check to see if we are actually adding memory
	 */
	if (!FUNC4(np, "memory"))
		return 0;

	/*
	 * Find the base and size of the memblock
	 */
	regs = FUNC3(np, "reg", NULL);
	if (!regs)
		return ret;

	base = FUNC1(*(unsigned long *)regs);
	lmb_size = FUNC0(regs[3]);

	/*
	 * Update memory region to represent the memory add
	 */
	ret = FUNC2(base, lmb_size);
	return (ret < 0) ? -EINVAL : 0;
}