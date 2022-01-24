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
typedef  int /*<<< orphan*/  u8 ;
struct tpm_chip {int /*<<< orphan*/  dev; } ;
struct crb_priv {int /*<<< orphan*/ * rsp; TYPE_1__* regs_t; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_sts; } ;

/* Variables and functions */
 int CRB_CTRL_STS_ERROR ; 
 int EIO ; 
 size_t TPM_HEADER_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 struct crb_priv* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u8 *buf, size_t count)
{
	struct crb_priv *priv = FUNC1(&chip->dev);
	unsigned int expected;

	/* A sanity check that the upper layer wants to get at least the header
	 * as that is the minimum size for any TPM response.
	 */
	if (count < TPM_HEADER_SIZE)
		return -EIO;

	/* If this bit is set, according to the spec, the TPM is in
	 * unrecoverable condition.
	 */
	if (FUNC2(&priv->regs_t->ctrl_sts) & CRB_CTRL_STS_ERROR)
		return -EIO;

	/* Read the first 8 bytes in order to get the length of the response.
	 * We read exactly a quad word in order to make sure that the remaining
	 * reads will be aligned.
	 */
	FUNC3(buf, priv->rsp, 8);

	expected = FUNC0((__be32 *)&buf[2]);
	if (expected > count || expected < TPM_HEADER_SIZE)
		return -EIO;

	FUNC3(&buf[8], &priv->rsp[8], expected - 8);

	return expected;
}