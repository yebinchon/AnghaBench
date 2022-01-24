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
typedef  int u32 ;
struct tpm_chip {int* cc_attrs_tbl; int nr_commands; int /*<<< orphan*/  dev; } ;
struct tpm_buf {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TPM2_CAP_COMMANDS ; 
 int TPM2_CC_ATTR_CHANDLES ; 
 int TPM2_CC_CONTEXT_SAVE ; 
 int TPM2_CC_FIRST ; 
 int TPM2_CC_FLUSH_CONTEXT ; 
 int /*<<< orphan*/  TPM2_CC_GET_CAPABILITY ; 
 int /*<<< orphan*/  TPM2_ST_NO_SESSIONS ; 
 int TPM_HEADER_SIZE ; 
 int /*<<< orphan*/  TPM_PT_TOTAL_COMMANDS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_buf*) ; 
 int FUNC6 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct tpm_chip*,struct tpm_buf*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct tpm_chip *chip)
{
	struct tpm_buf buf;
	u32 nr_commands;
	__be32 *attrs;
	u32 cc;
	int i;
	int rc;

	rc = FUNC3(chip, TPM_PT_TOTAL_COMMANDS, &nr_commands, NULL);
	if (rc)
		goto out;

	if (nr_commands > 0xFFFFF) {
		rc = -EFAULT;
		goto out;
	}

	chip->cc_attrs_tbl = FUNC2(&chip->dev, 4, nr_commands,
					  GFP_KERNEL);

	rc = FUNC6(&buf, TPM2_ST_NO_SESSIONS, TPM2_CC_GET_CAPABILITY);
	if (rc)
		goto out;

	FUNC4(&buf, TPM2_CAP_COMMANDS);
	FUNC4(&buf, TPM2_CC_FIRST);
	FUNC4(&buf, nr_commands);

	rc = FUNC7(chip, &buf, 9 + 4 * nr_commands, NULL);
	if (rc) {
		FUNC5(&buf);
		goto out;
	}

	if (nr_commands !=
	    FUNC1((__be32 *)&buf.data[TPM_HEADER_SIZE + 5])) {
		FUNC5(&buf);
		goto out;
	}

	chip->nr_commands = nr_commands;

	attrs = (__be32 *)&buf.data[TPM_HEADER_SIZE + 9];
	for (i = 0; i < nr_commands; i++, attrs++) {
		chip->cc_attrs_tbl[i] = FUNC1(attrs);
		cc = chip->cc_attrs_tbl[i] & 0xFFFF;

		if (cc == TPM2_CC_CONTEXT_SAVE || cc == TPM2_CC_FLUSH_CONTEXT) {
			chip->cc_attrs_tbl[i] &=
				~(FUNC0(2, 0) << TPM2_CC_ATTR_CHANDLES);
			chip->cc_attrs_tbl[i] |= 1 << TPM2_CC_ATTR_CHANDLES;
		}
	}

	FUNC5(&buf);

out:
	if (rc > 0)
		rc = -ENODEV;
	return rc;
}