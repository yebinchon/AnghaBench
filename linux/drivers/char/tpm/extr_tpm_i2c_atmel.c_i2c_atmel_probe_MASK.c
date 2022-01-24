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
struct tpm_chip {int /*<<< orphan*/  dev; void* timeout_d; void* timeout_c; void* timeout_b; void* timeout_a; } ;
struct priv_data {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct tpm_chip*) ; 
 int FUNC1 (struct tpm_chip*) ; 
 int /*<<< orphan*/  TPM_I2C_LONG_TIMEOUT ; 
 int /*<<< orphan*/  TPM_I2C_SHORT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct priv_data*) ; 
 struct priv_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_atmel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tpm_chip*) ; 
 struct tpm_chip* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct tpm_chip *chip;
	struct device *dev = &client->dev;
	struct priv_data *priv;

	if (!FUNC4(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	chip = FUNC7(dev, &i2c_atmel);
	if (FUNC0(chip))
		return FUNC1(chip);

	priv = FUNC3(dev, sizeof(struct priv_data), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* Default timeouts */
	chip->timeout_a = FUNC5(TPM_I2C_SHORT_TIMEOUT);
	chip->timeout_b = FUNC5(TPM_I2C_LONG_TIMEOUT);
	chip->timeout_c = FUNC5(TPM_I2C_SHORT_TIMEOUT);
	chip->timeout_d = FUNC5(TPM_I2C_SHORT_TIMEOUT);

	FUNC2(&chip->dev, priv);

	/* There is no known way to probe for this device, and all version
	 * information seems to be read via TPM commands. Thus we rely on the
	 * TPM startup process in the common code to detect the device. */

	return FUNC6(chip);
}