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
struct tpm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TPM_ACCESS_ACTIVE_LOCALITY ; 
 int TPM_ACCESS_REQUEST_PENDING ; 
 int TPM_ACCESS_VALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC3(struct tpm_chip *chip, int loc, int force)
{
	u8 buf;
	if (FUNC1(FUNC0(loc), &buf, 1) < 0)
		return;

	if (force || (buf & (TPM_ACCESS_REQUEST_PENDING | TPM_ACCESS_VALID)) ==
	    (TPM_ACCESS_REQUEST_PENDING | TPM_ACCESS_VALID)) {
		buf = TPM_ACCESS_ACTIVE_LOCALITY;
		FUNC2(FUNC0(loc), &buf, 1);
	}
}