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
struct TYPE_2__ {int /*<<< orphan*/  msi_priv_data; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct device {int /*<<< orphan*/  msi_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_DEV_MSIS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct msi_desc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct device *dev)
{
	if (!FUNC2(FUNC0(dev))) {
		struct msi_desc *desc;

		desc = FUNC1(dev);
		FUNC5(desc->platform.msi_priv_data);
	}

	FUNC3(dev->msi_domain, dev);
	FUNC4(dev, 0, MAX_DEV_MSIS);
}