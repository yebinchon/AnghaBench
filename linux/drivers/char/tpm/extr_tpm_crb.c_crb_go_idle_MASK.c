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
struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;
struct crb_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct crb_priv*) ; 
 struct crb_priv* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct tpm_chip *chip)
{
	struct device *dev = &chip->dev;
	struct crb_priv *priv = FUNC1(dev);

	return FUNC0(dev, priv);
}