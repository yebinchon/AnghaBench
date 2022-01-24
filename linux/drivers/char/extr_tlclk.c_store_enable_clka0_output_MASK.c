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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  TLCLK_REG2 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  event_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
		 struct device_attribute *attr, const char *buf, size_t count)
{
	unsigned long flags;
	unsigned long tmp;
	unsigned char val;

	FUNC4(buf, "%lX", &tmp);
	FUNC1(d, "tmp = 0x%lX\n", tmp);

	val = (unsigned char)tmp;
	FUNC2(&event_lock, flags);
	FUNC0(TLCLK_REG2, 0xfe, val);
	FUNC3(&event_lock, flags);

	return FUNC5(buf, count);
}