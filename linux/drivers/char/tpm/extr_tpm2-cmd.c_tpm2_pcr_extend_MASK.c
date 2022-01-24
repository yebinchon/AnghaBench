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
typedef  int u32 ;
struct tpm_digest {int /*<<< orphan*/  digest; int /*<<< orphan*/  alg_id; } ;
struct tpm_chip {int nr_allocated_banks; TYPE_1__* allocated_banks; } ;
struct tpm_buf {int dummy; } ;
struct tpm2_null_auth_area {scalar_t__ auth_size; scalar_t__ attributes; scalar_t__ nonce_size; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  auth_area ;
struct TYPE_2__ {int digest_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPM2_CC_PCR_EXTEND ; 
 int /*<<< orphan*/  TPM2_RS_PW ; 
 int /*<<< orphan*/  TPM2_ST_SESSIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tpm_buf*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_buf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tpm_buf*) ; 
 int FUNC5 (struct tpm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tpm_chip*,struct tpm_buf*,int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct tpm_chip *chip, u32 pcr_idx,
		    struct tpm_digest *digests)
{
	struct tpm_buf buf;
	struct tpm2_null_auth_area auth_area;
	int rc;
	int i;

	rc = FUNC5(&buf, TPM2_ST_SESSIONS, TPM2_CC_PCR_EXTEND);
	if (rc)
		return rc;

	FUNC3(&buf, pcr_idx);

	auth_area.handle = FUNC0(TPM2_RS_PW);
	auth_area.nonce_size = 0;
	auth_area.attributes = 0;
	auth_area.auth_size = 0;

	FUNC3(&buf, sizeof(struct tpm2_null_auth_area));
	FUNC1(&buf, (const unsigned char *)&auth_area,
		       sizeof(auth_area));
	FUNC3(&buf, chip->nr_allocated_banks);

	for (i = 0; i < chip->nr_allocated_banks; i++) {
		FUNC2(&buf, digests[i].alg_id);
		FUNC1(&buf, (const unsigned char *)&digests[i].digest,
			       chip->allocated_banks[i].digest_size);
	}

	rc = FUNC6(chip, &buf, 0, "attempting extend a PCR value");

	FUNC4(&buf);

	return rc;
}