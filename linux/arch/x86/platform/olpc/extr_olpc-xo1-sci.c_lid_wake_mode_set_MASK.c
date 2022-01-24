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
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 size_t EINVAL ; 
 int lid_wake_mode ; 
 char** lid_wake_mode_names ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	int i;
	for (i = 0; i < FUNC0(lid_wake_mode_names); i++) {
		const char *mode = lid_wake_mode_names[i];
		if (FUNC1(mode) != count || FUNC2(mode, buf, count))
			continue;

		lid_wake_mode = i;
		return count;
	}
	return -EINVAL;
}