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
typedef  int u8 ;
struct tpm_chip {int dummy; } ;
struct TYPE_2__ {int locality; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_ACCESS_VALID ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 TYPE_1__ tpm_dev ; 

__attribute__((used)) static bool FUNC2(struct tpm_chip *chip, int loc)
{
	u8 buf;
	int rc;

	rc = FUNC1(FUNC0(loc), &buf, 1);
	if (rc < 0)
		return false;

	if ((buf & (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) ==
	    (TPM_ACCESS_ACTIVE_LOCALITY | TPM_ACCESS_VALID)) {
		tpm_dev.locality = loc;
		return true;
	}

	return false;
}