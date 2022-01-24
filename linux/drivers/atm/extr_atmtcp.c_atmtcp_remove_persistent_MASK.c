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
struct atmtcp_dev_data {scalar_t__ vcc; scalar_t__ persist; } ;
struct atm_dev {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EMEDIUMTYPE ; 
 int ENODEV ; 
 struct atmtcp_dev_data* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 struct atm_dev* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_dev*) ; 
 int /*<<< orphan*/  atmtcp_v_dev_ops ; 
 int /*<<< orphan*/  FUNC4 (struct atmtcp_dev_data*) ; 

__attribute__((used)) static int FUNC5(int itf)
{
	struct atm_dev *dev;
	struct atmtcp_dev_data *dev_data;

	dev = FUNC2(itf);
	if (!dev) return -ENODEV;
	if (dev->ops != &atmtcp_v_dev_ops) {
		FUNC3(dev);
		return -EMEDIUMTYPE;
	}
	dev_data = FUNC0(dev);
	if (!dev_data->persist) return 0;
	dev_data->persist = 0;
	if (FUNC0(dev)->vcc) return 0;
	FUNC4(dev_data);
	FUNC3(dev);
	FUNC1(dev);
	return 0;
}