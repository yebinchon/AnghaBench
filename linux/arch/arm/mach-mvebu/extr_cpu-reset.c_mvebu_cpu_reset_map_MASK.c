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
struct resource {int /*<<< orphan*/  start; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  cpu_reset_base ; 
 int /*<<< orphan*/  cpu_reset_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct device_node *np, int res_idx)
{
	struct resource res;

	if (FUNC1(np, res_idx, &res)) {
		FUNC2("unable to get resource\n");
		return -ENOENT;
	}

	if (!FUNC4(res.start, FUNC5(&res),
				np->full_name)) {
		FUNC2("unable to request region\n");
		return -EBUSY;
	}

	cpu_reset_base = FUNC0(res.start, FUNC5(&res));
	if (!cpu_reset_base) {
		FUNC2("unable to map registers\n");
		FUNC3(res.start, FUNC5(&res));
		return -ENOMEM;
	}

	cpu_reset_size = FUNC5(&res);

	return 0;
}