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
 scalar_t__ COUNT_CACHE_FLUSH_HW ; 
 scalar_t__ COUNT_CACHE_FLUSH_NONE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  SEC_FTR_BCCTRL_SERIALISED ; 
 int /*<<< orphan*/  SEC_FTR_COUNT_CACHE_DISABLED ; 
 scalar_t__ btb_flush_enabled ; 
 scalar_t__ count_cache_flush_type ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_buf*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_buf*,char*) ; 

ssize_t FUNC3(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct seq_buf s;
	bool bcs, ccd;

	FUNC1(&s, buf, PAGE_SIZE - 1);

	bcs = FUNC0(SEC_FTR_BCCTRL_SERIALISED);
	ccd = FUNC0(SEC_FTR_COUNT_CACHE_DISABLED);

	if (bcs || ccd) {
		FUNC2(&s, "Mitigation: ");

		if (bcs)
			FUNC2(&s, "Indirect branch serialisation (kernel only)");

		if (bcs && ccd)
			FUNC2(&s, ", ");

		if (ccd)
			FUNC2(&s, "Indirect branch cache disabled");
	} else if (count_cache_flush_type != COUNT_CACHE_FLUSH_NONE) {
		FUNC2(&s, "Mitigation: Software count cache flush");

		if (count_cache_flush_type == COUNT_CACHE_FLUSH_HW)
			FUNC2(&s, " (hardware accelerated)");
	} else if (btb_flush_enabled) {
		FUNC2(&s, "Mitigation: Branch predictor state flush");
	} else {
		FUNC2(&s, "Vulnerable");
	}

	FUNC2(&s, "\n");

	return s.len;
}