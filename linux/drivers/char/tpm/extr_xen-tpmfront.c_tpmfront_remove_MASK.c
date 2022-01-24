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
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct tpm_private {int dummy; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 

__attribute__((used)) static int FUNC4(struct xenbus_device *dev)
{
	struct tpm_chip *chip = FUNC0(&dev->dev);
	struct tpm_private *priv = FUNC0(&chip->dev);
	FUNC3(chip);
	FUNC2(priv);
	FUNC1(&chip->dev, NULL);
	return 0;
}