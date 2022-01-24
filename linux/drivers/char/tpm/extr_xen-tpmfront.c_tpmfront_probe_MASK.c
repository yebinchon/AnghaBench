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
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct tpm_private {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tpm_private*) ; 
 struct tpm_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_private*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct tpm_private*) ; 
 int FUNC4 (struct xenbus_device*,struct tpm_private*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xenbus_device*,int,char*) ; 

__attribute__((used)) static int FUNC8(struct xenbus_device *dev,
		const struct xenbus_device_id *id)
{
	struct tpm_private *priv;
	int rv;

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC7(dev, -ENOMEM, "allocating priv structure");
		return -ENOMEM;
	}

	rv = FUNC3(&dev->dev, priv);
	if (rv) {
		FUNC0(priv);
		return rv;
	}

	rv = FUNC4(dev, priv);
	if (rv) {
		FUNC2(priv);
		return rv;
	}

	FUNC6(priv->chip);

	return FUNC5(priv->chip);
}