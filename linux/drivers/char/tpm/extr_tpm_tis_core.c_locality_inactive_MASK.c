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
typedef  int u8 ;
struct tpm_tis_data {int dummy; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_ACCESS_VALID ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tpm_tis_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool FUNC3(struct tpm_chip *chip, int l)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	int rc;
	u8 access;

	rc = FUNC2(priv, FUNC0(l), &access);
	if (rc < 0)
		return false;

	if ((access & (TPM_ACCESS_VALID | TPM_ACCESS_ACTIVE_LOCALITY))
	    == TPM_ACCESS_VALID)
		return true;

	return false;
}