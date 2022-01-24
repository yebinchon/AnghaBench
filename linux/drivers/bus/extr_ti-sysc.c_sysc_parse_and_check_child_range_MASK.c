#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sysc {int /*<<< orphan*/  module_size; int /*<<< orphan*/  module_pa; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sysc *ddata)
{
	struct device_node *np = ddata->dev->of_node;
	const __be32 *ranges;
	u32 nr_addr, nr_size;
	int len, error;

	ranges = FUNC2(np, "ranges", &len);
	if (!ranges) {
		FUNC1(ddata->dev, "missing ranges for %pOF\n", np);

		return -ENOENT;
	}

	len /= sizeof(*ranges);

	if (len < 3) {
		FUNC1(ddata->dev, "incomplete ranges for %pOF\n", np);

		return -EINVAL;
	}

	error = FUNC3(np, "#address-cells", &nr_addr);
	if (error)
		return -ENOENT;

	error = FUNC3(np, "#size-cells", &nr_size);
	if (error)
		return -ENOENT;

	if (nr_addr != 1 || nr_size != 1) {
		FUNC1(ddata->dev, "invalid ranges for %pOF\n", np);

		return -EINVAL;
	}

	ranges++;
	ddata->module_pa = FUNC4(np, ranges++);
	ddata->module_size = FUNC0(ranges);

	return 0;
}