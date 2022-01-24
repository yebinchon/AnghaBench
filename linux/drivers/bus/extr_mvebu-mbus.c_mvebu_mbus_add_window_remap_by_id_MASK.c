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
struct mvebu_mbus_state {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 struct mvebu_mbus_state mbus_state ; 
 int FUNC0 (struct mvebu_mbus_state*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvebu_mbus_state*,int /*<<< orphan*/ ,size_t,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int) ; 

int FUNC3(unsigned int target,
				      unsigned int attribute,
				      phys_addr_t base, size_t size,
				      phys_addr_t remap)
{
	struct mvebu_mbus_state *s = &mbus_state;

	if (!FUNC1(s, base, size, target, attribute)) {
		FUNC2("cannot add window '%x:%x', conflicts with another window\n",
		       target, attribute);
		return -EINVAL;
	}

	return FUNC0(s, base, size, remap, target, attribute);
}