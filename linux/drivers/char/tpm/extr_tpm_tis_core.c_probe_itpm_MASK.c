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
typedef  scalar_t__ u16 ;
struct tpm_tis_data {int flags; int /*<<< orphan*/  locality; } ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  cmd_getticks ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TPM_TIS_ITPM_WORKAROUND ; 
 scalar_t__ TPM_VID_INTEL ; 
 struct tpm_tis_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct tpm_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tpm_tis_data*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct tpm_chip*) ; 
 int FUNC7 (struct tpm_chip*,int const*,size_t) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip)
{
	struct tpm_tis_data *priv = FUNC1(&chip->dev);
	int rc = 0;
	static const u8 cmd_getticks[] = {
		0x00, 0xc1, 0x00, 0x00, 0x00, 0x0a,
		0x00, 0x00, 0x00, 0xf1
	};
	size_t len = sizeof(cmd_getticks);
	u16 vendor;

	if (priv->flags & TPM_TIS_ITPM_WORKAROUND)
		return 0;

	rc = FUNC5(priv, FUNC0(0), &vendor);
	if (rc < 0)
		return rc;

	/* probe only iTPMS */
	if (vendor != TPM_VID_INTEL)
		return 0;

	if (FUNC4(chip, 0) != 0)
		return -EBUSY;

	rc = FUNC7(chip, cmd_getticks, len);
	if (rc == 0)
		goto out;

	FUNC6(chip);

	priv->flags |= TPM_TIS_ITPM_WORKAROUND;

	rc = FUNC7(chip, cmd_getticks, len);
	if (rc == 0)
		FUNC2(&chip->dev, "Detected an iTPM.\n");
	else {
		priv->flags &= ~TPM_TIS_ITPM_WORKAROUND;
		rc = -EFAULT;
	}

out:
	FUNC6(chip);
	FUNC3(chip, priv->locality);

	return rc;
}