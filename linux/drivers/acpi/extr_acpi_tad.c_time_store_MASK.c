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
struct acpi_tad_rt {int year; int month; int day; int hour; int minute; int second; int tz; int daylight; int /*<<< orphan*/  padding; scalar_t__ msec; scalar_t__ valid; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (char*,int*) ; 
 int FUNC1 (struct device*,struct acpi_tad_rt*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct acpi_tad_rt rt;
	char *str, *s;
	int val, ret = -ENODATA;

	str = FUNC3(buf, count, GFP_KERNEL);
	if (!str)
		return -ENOMEM;

	s = FUNC0(str, &val);
	if (!s)
		goto out_free;

	rt.year = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.month = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.day = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.hour = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.minute = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.second = val;

	s = FUNC0(s, &val);
	if (!s)
		goto out_free;

	rt.tz = val;

	if (FUNC4(s, 10, &val))
		goto out_free;

	rt.daylight = val;

	rt.valid = 0;
	rt.msec = 0;
	FUNC5(rt.padding, 0, 3);

	ret = FUNC1(dev, &rt);

out_free:
	FUNC2(str);
	return ret ? ret : count;
}