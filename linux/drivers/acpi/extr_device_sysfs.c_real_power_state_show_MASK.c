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
struct acpi_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct acpi_device*,int*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,char*,char*) ; 
 struct acpi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct acpi_device *adev = FUNC3(dev);
	int state;
	int ret;

	ret = FUNC0(adev, &state);
	if (ret)
		return ret;

	return FUNC2(buf, "%s\n", FUNC1(state));
}