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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int,int,int*) ; 

__attribute__((used)) static int FUNC2(struct b53_device *dev, u8 page, u8 reg, u64 *val)
{
	u32 hi, lo;

	if (FUNC0(reg % 4))
		return -EINVAL;

	FUNC1(dev, page, reg, &lo);
	FUNC1(dev, page, reg + 4, &hi);

	*val = ((u64)hi << 32) | lo;

	return 0;
}