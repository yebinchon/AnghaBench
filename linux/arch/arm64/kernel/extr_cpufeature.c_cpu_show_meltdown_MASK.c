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
 scalar_t__ __meltdown_safe ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

ssize_t FUNC2(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	if (__meltdown_safe)
		return FUNC1(buf, "Not affected\n");

	if (FUNC0())
		return FUNC1(buf, "Mitigation: PTI\n");

	return FUNC1(buf, "Vulnerable\n");
}