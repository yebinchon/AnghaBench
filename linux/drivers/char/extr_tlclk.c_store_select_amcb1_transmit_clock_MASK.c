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
#define  CLK_11_184MHz 131 
 unsigned char CLK_16_384MHz ; 
#define  CLK_34_368MHz 130 
#define  CLK_44_736MHz 129 
#define  CLK_8_592MHz 128 
 unsigned char CLK_8kHz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  TLCLK_REG0 ; 
 int /*<<< orphan*/  TLCLK_REG1 ; 
 int /*<<< orphan*/  TLCLK_REG3 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  event_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d,
		 struct device_attribute *attr, const char *buf, size_t count)
{
	unsigned long tmp;
	unsigned char val;
	unsigned long flags;

	FUNC4(buf, "%lX", &tmp);
	FUNC1(d, "tmp = 0x%lX\n", tmp);

	val = (unsigned char)tmp;
	FUNC2(&event_lock, flags);
	if ((val == CLK_8kHz) || (val == CLK_16_384MHz)) {
		FUNC0(TLCLK_REG3, 0xf8, 0x5);
		FUNC0(TLCLK_REG1, 0xfb, ~val);
	} else if (val >= CLK_8_592MHz) {
		FUNC0(TLCLK_REG3, 0xf8, 0x7);
		switch (val) {
		case CLK_8_592MHz:
			FUNC0(TLCLK_REG0, 0xfc, 2);
			break;
		case CLK_11_184MHz:
			FUNC0(TLCLK_REG0, 0xfc, 0);
			break;
		case CLK_34_368MHz:
			FUNC0(TLCLK_REG0, 0xfc, 3);
			break;
		case CLK_44_736MHz:
			FUNC0(TLCLK_REG0, 0xfc, 1);
			break;
		}
	} else {
		FUNC0(TLCLK_REG3, 0xf8, val);
	}
	FUNC3(&event_lock, flags);

	return FUNC5(buf, count);
}