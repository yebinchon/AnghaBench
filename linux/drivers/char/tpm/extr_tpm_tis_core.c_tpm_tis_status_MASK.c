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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_tis_data {int /*<<< orphan*/  locality; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tpm_tis_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC3(struct tpm_chip *chip)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	int rc;
	u8 status;

	rc = FUNC2(priv, FUNC0(priv->locality), &status);
	if (rc < 0)
		return 0;

	return status;
}