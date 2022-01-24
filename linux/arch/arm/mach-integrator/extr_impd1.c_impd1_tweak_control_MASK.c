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
typedef  int u32 ;
struct impd1_module {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IMPD1_CTRL ; 
 struct impd1_module* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct device *dev, u32 mask, u32 val)
{
	struct impd1_module *impd1 = FUNC0(dev);
	u32 cur;

	val &= mask;
	cur = FUNC1(impd1->base + IMPD1_CTRL) & ~mask;
	FUNC2(cur | val, impd1->base + IMPD1_CTRL);
}