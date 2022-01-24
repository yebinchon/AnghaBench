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
#define  ARM64_BP_HARDEN_NOT_REQUIRED 130 
#define  ARM64_BP_HARDEN_UNKNOWN 129 
#define  ARM64_BP_HARDEN_WA_NEEDED 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	switch (FUNC0()) {
	case ARM64_BP_HARDEN_NOT_REQUIRED:
		return FUNC1(buf, "Not affected\n");
        case ARM64_BP_HARDEN_WA_NEEDED:
		return FUNC1(buf, "Mitigation: Branch predictor hardening\n");
        case ARM64_BP_HARDEN_UNKNOWN:
	default:
		return FUNC1(buf, "Vulnerable\n");
	}
}