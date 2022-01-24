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
struct device {int dummy; } ;
struct cpumask {int dummy; } ;
struct cacheinfo {struct cpumask shared_cpu_map; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct cpumask const*) ; 
 struct cacheinfo* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev, bool list, char *buf)
{
	struct cacheinfo *this_leaf = FUNC1(dev);
	const struct cpumask *mask = &this_leaf->shared_cpu_map;

	return FUNC0(list, buf, mask);
}