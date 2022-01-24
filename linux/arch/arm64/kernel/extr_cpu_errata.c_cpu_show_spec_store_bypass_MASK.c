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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ARM64_SSBD_FORCE_ENABLE 129 
#define  ARM64_SSBD_KERNEL 128 
 int /*<<< orphan*/  CONFIG_ARM64_SSBD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ __ssb_safe ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int ssbd_state ; 

ssize_t FUNC2(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	if (__ssb_safe)
		return FUNC1(buf, "Not affected\n");

	switch (ssbd_state) {
	case ARM64_SSBD_KERNEL:
	case ARM64_SSBD_FORCE_ENABLE:
		if (FUNC0(CONFIG_ARM64_SSBD))
			return FUNC1(buf,
			    "Mitigation: Speculative Store Bypass disabled via prctl\n");
	}

	return FUNC1(buf, "Vulnerable\n");
}