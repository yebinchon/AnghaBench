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
struct xilly_endpoint_hardware {int dummy; } ;
struct xilly_endpoint {int /*<<< orphan*/  dev; int /*<<< orphan*/  registers; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct xilly_endpoint*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xilly_endpoint*) ; 
 struct xilly_endpoint_hardware of_hw ; 
 struct xilly_endpoint_hardware of_hw_coherent ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xilly_endpoint*) ; 
 struct xilly_endpoint* FUNC10 (int /*<<< orphan*/ *,struct device*,struct xilly_endpoint_hardware*) ; 
 int /*<<< orphan*/  xillybus_isr ; 
 int /*<<< orphan*/  xillyname ; 

__attribute__((used)) static int FUNC11(struct platform_device *op)
{
	struct device *dev = &op->dev;
	struct xilly_endpoint *endpoint;
	int rc;
	int irq;
	struct resource *res;
	struct xilly_endpoint_hardware *ephw = &of_hw;

	if (FUNC6(dev->of_node, "dma-coherent"))
		ephw = &of_hw_coherent;

	endpoint = FUNC10(NULL, dev, ephw);

	if (!endpoint)
		return -ENOMEM;

	FUNC3(dev, endpoint);

	res = FUNC8(op, IORESOURCE_MEM, 0);
	endpoint->registers = FUNC4(dev, res);

	if (FUNC0(endpoint->registers))
		return FUNC1(endpoint->registers);

	irq = FUNC7(op, 0);

	rc = FUNC5(dev, irq, xillybus_isr, 0, xillyname, endpoint);

	if (rc) {
		FUNC2(endpoint->dev,
			"Failed to register IRQ handler. Aborting.\n");
		return -ENODEV;
	}

	return FUNC9(endpoint);
}