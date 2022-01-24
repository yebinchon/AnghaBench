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
struct resource {int dummy; } ;
struct tpm_info {int irq; struct resource res; } ;
struct pnp_device_id {int dummy; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC0 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tpm_info*) ; 

__attribute__((used)) static int FUNC4(struct pnp_dev *pnp_dev,
			    const struct pnp_device_id *pnp_id)
{
	struct tpm_info tpm_info = {};
	struct resource *res;

	res = FUNC0(pnp_dev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	tpm_info.res = *res;

	if (FUNC2(pnp_dev, 0))
		tpm_info.irq = FUNC1(pnp_dev, 0);
	else
		tpm_info.irq = -1;

	return FUNC3(&pnp_dev->dev, &tpm_info);
}