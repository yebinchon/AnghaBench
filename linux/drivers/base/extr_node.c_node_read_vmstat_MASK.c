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
struct pglist_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct pglist_data* FUNC0 (int) ; 
 int NR_VM_NODE_STAT_ITEMS ; 
 int NR_VM_NUMA_STAT_ITEMS ; 
 int NR_VM_ZONE_STAT_ITEMS ; 
 int /*<<< orphan*/  FUNC1 (struct pglist_data*,int) ; 
 scalar_t__ FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 char** vmstat_text ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	int nid = dev->id;
	struct pglist_data *pgdat = FUNC0(nid);
	int i;
	int n = 0;

	for (i = 0; i < NR_VM_ZONE_STAT_ITEMS; i++)
		n += FUNC2(buf+n, "%s %lu\n", vmstat_text[i],
			     FUNC3(nid, i));

#ifdef CONFIG_NUMA
	for (i = 0; i < NR_VM_NUMA_STAT_ITEMS; i++)
		n += sprintf(buf+n, "%s %lu\n",
			     vmstat_text[i + NR_VM_ZONE_STAT_ITEMS],
			     sum_zone_numa_state(nid, i));
#endif

	for (i = 0; i < NR_VM_NODE_STAT_ITEMS; i++)
		n += FUNC2(buf+n, "%s %lu\n",
			     vmstat_text[i + NR_VM_ZONE_STAT_ITEMS +
			     NR_VM_NUMA_STAT_ITEMS],
			     FUNC1(pgdat, i));

	return n;
}