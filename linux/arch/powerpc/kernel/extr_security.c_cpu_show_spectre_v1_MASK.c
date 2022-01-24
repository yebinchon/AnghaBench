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
struct seq_buf {int /*<<< orphan*/  len; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SEC_FTR_BNDS_CHK_SPEC_BAR ; 
 int /*<<< orphan*/  SEC_FTR_SPEC_BAR_ORI31 ; 
 scalar_t__ barrier_nospec_enabled ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_buf*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_buf*,char*) ; 

ssize_t FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct seq_buf s;

	FUNC1(&s, buf, PAGE_SIZE - 1);

	if (FUNC0(SEC_FTR_BNDS_CHK_SPEC_BAR)) {
		if (barrier_nospec_enabled)
			FUNC2(&s, "Mitigation: __user pointer sanitization");
		else
			FUNC2(&s, "Vulnerable");

		if (FUNC0(SEC_FTR_SPEC_BAR_ORI31))
			FUNC2(&s, ", ori31 speculation barrier enabled");

		FUNC2(&s, "\n");
	} else
		FUNC2(&s, "Not affected\n");

	return s.len;
}