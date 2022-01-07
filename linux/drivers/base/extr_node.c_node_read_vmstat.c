
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef int ssize_t ;


 struct pglist_data* NODE_DATA (int) ;
 int NR_VM_NODE_STAT_ITEMS ;
 int NR_VM_NUMA_STAT_ITEMS ;
 int NR_VM_ZONE_STAT_ITEMS ;
 int node_page_state (struct pglist_data*,int) ;
 scalar_t__ sprintf (char*,char*,char*,int ) ;
 int sum_zone_node_page_state (int,int) ;
 int sum_zone_numa_state (int,int) ;
 char** vmstat_text ;

__attribute__((used)) static ssize_t node_read_vmstat(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int nid = dev->id;
 struct pglist_data *pgdat = NODE_DATA(nid);
 int i;
 int n = 0;

 for (i = 0; i < NR_VM_ZONE_STAT_ITEMS; i++)
  n += sprintf(buf+n, "%s %lu\n", vmstat_text[i],
        sum_zone_node_page_state(nid, i));
 for (i = 0; i < NR_VM_NODE_STAT_ITEMS; i++)
  n += sprintf(buf+n, "%s %lu\n",
        vmstat_text[i + NR_VM_ZONE_STAT_ITEMS +
        NR_VM_NUMA_STAT_ITEMS],
        node_page_state(pgdat, i));

 return n;
}
