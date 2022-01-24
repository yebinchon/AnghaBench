#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct tpm_chip {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  num_pcrs; } ;
typedef  TYPE_1__ cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CAP_PROP_PCR ; 
 int TPM_DIGEST_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 struct tpm_chip* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct tpm_chip*,int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC4 (struct tpm_chip*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct tpm_chip*) ; 
 scalar_t__ FUNC6 (struct tpm_chip*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	cap_t cap;
	u8 digest[TPM_DIGEST_SIZE];
	u32 i, j, num_pcrs;
	char *str = buf;
	struct tpm_chip *chip = FUNC2(dev);

	if (FUNC6(chip))
		return 0;

	if (FUNC3(chip, TPM_CAP_PROP_PCR, &cap,
			"attempting to determine the number of PCRS",
			sizeof(cap.num_pcrs))) {
		FUNC5(chip);
		return 0;
	}

	num_pcrs = FUNC0(cap.num_pcrs);
	for (i = 0; i < num_pcrs; i++) {
		if (FUNC4(chip, i, digest)) {
			str = buf;
			break;
		}
		str += FUNC1(str, "PCR-%02d: ", i);
		for (j = 0; j < TPM_DIGEST_SIZE; j++)
			str += FUNC1(str, "%02X ", digest[j]);
		str += FUNC1(str, "\n");
	}
	FUNC5(chip);
	return str - buf;
}