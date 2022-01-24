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
struct tpm_chip {scalar_t__* duration; scalar_t__ duration_adjusted; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t TPM_LONG ; 
 size_t TPM_MEDIUM ; 
 size_t TPM_SHORT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,char*) ; 
 struct tpm_chip* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			      char *buf)
{
	struct tpm_chip *chip = FUNC2(dev);

	if (chip->duration[TPM_LONG] == 0)
		return 0;

	return FUNC1(buf, "%d %d %d [%s]\n",
		       FUNC0(chip->duration[TPM_SHORT]),
		       FUNC0(chip->duration[TPM_MEDIUM]),
		       FUNC0(chip->duration[TPM_LONG]),
		       chip->duration_adjusted
		       ? "adjusted" : "original");
}