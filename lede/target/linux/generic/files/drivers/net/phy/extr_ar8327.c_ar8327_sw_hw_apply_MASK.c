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
struct switch_dev {int dummy; } ;
struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_data {scalar_t__* eee; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AR8327_REG_EEE_CTRL ; 
 int AR8XXX_NUM_PHYS ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct switch_dev*) ; 
 struct ar8xxx_priv* FUNC4 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC5(struct switch_dev *dev)
{
	struct ar8xxx_priv *priv = FUNC4(dev);
	const struct ar8327_data *data = priv->chip_data;
	int ret, i;

	ret = FUNC3(dev);
	if (ret)
		return ret;

	for (i=0; i < AR8XXX_NUM_PHYS; i++) {
		if (data->eee[i])
			FUNC1(priv, AR8327_REG_EEE_CTRL,
			       FUNC0(i));
		else
			FUNC2(priv, AR8327_REG_EEE_CTRL,
			       FUNC0(i));
	}

	return 0;
}