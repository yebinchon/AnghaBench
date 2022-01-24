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
struct net_device {unsigned char* dev_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev, char *str)
{
	unsigned char *addr = dev->dev_addr;

	if (str == NULL)
		goto random;

	if (!FUNC4(str, addr)) {
		FUNC5("%s: failed to parse '%s' as an ethernet address\n",
		       dev->name, str);
		goto random;
	}
	if (FUNC2(addr)) {
		FUNC5("%s: attempt to assign a multicast ethernet address\n",
		       dev->name);
		goto random;
	}
	if (!FUNC3(addr)) {
		FUNC5("%s: attempt to assign an invalid ethernet address\n",
		       dev->name);
		goto random;
	}
	if (!FUNC1(addr))
		FUNC7("%s: assigning a globally valid ethernet address\n",
			dev->name);
	return;

random:
	FUNC6("%s: choosing a random ethernet address\n",
		dev->name);
	FUNC0(dev);
}