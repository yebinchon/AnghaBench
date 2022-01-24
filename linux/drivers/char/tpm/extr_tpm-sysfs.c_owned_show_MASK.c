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
struct tpm_chip {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {int owned; } ;
typedef  TYPE_1__ cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CAP_PROP_OWNER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct tpm_chip* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct tpm_chip*,int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tpm_chip*) ; 
 scalar_t__ FUNC4 (struct tpm_chip*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	struct tpm_chip *chip = FUNC1(dev);
	ssize_t rc = 0;
	cap_t cap;

	if (FUNC4(chip))
		return 0;

	if (FUNC2(FUNC1(dev), TPM_CAP_PROP_OWNER, &cap,
			"attempting to determine the owner state",
			sizeof(cap.owned)))
		goto out_ops;

	rc = FUNC0(buf, "%d\n", cap.owned);
out_ops:
	FUNC3(chip);
	return rc;
}