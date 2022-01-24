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
typedef  unsigned int u32 ;
struct tpm_space {int dummy; } ;
struct tpm_chip {unsigned int* cc_attrs_tbl; struct tpm_space work_space; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int TPM2_CC_ATTR_CHANDLES ; 
 int TPM2_HT_TRANSIENT ; 
 size_t TPM_HEADER_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tpm_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_space*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tpm_chip *chip, u32 cc, u8 *cmd)
{
	struct tpm_space *space = &chip->work_space;
	unsigned int nr_handles;
	u32 attrs;
	__be32 *handle;
	int i;

	i = FUNC2(chip, cc);
	if (i < 0)
		return -EINVAL;

	attrs = chip->cc_attrs_tbl[i];
	nr_handles = (attrs >> TPM2_CC_ATTR_CHANDLES) & FUNC0(2, 0);

	handle = (__be32 *)&cmd[TPM_HEADER_SIZE];
	for (i = 0; i < nr_handles; i++, handle++) {
		if ((FUNC1(*handle) & 0xFF000000) == TPM2_HT_TRANSIENT) {
			if (!FUNC3(space, handle))
				return -EINVAL;
		}
	}

	return 0;
}