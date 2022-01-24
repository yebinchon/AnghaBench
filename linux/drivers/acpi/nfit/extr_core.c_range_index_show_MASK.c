#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfit_spa {TYPE_1__* spa; } ;
struct nd_region {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int range_index; } ;

/* Variables and functions */
 struct nfit_spa* FUNC0 (struct nd_region*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct nd_region* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nd_region *nd_region = FUNC2(dev);
	struct nfit_spa *nfit_spa = FUNC0(nd_region);

	return FUNC1(buf, "%d\n", nfit_spa->spa->range_index);
}