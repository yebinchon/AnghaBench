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
 int /*<<< orphan*/  FUNC0 (unsigned int const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mcs814x_eth_ids ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct device_node *np;
	const unsigned int *intspec;

	np = FUNC4(NULL, mcs814x_eth_ids);
	if (!np)
		return;

	/* hardware filter must always be enabled */
	FUNC2(1);

	intspec = FUNC5(np, "nuport-mac,buffer-shifting", NULL);
	if (!intspec)
		FUNC1(0);
	else
		FUNC1(1);

	intspec = FUNC5(np, "nuport-mac,link-activity", NULL);
	if (intspec)
		FUNC3(FUNC0(intspec));

	FUNC6(np);
}