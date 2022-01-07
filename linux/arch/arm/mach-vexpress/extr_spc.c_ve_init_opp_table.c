
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ve_spc_opp {int freq; int u_volt; } ;
struct device {int id; } ;
struct TYPE_2__ {int* num_opps; struct ve_spc_opp** opps; } ;


 int dev_pm_opp_add (struct device*,int,int ) ;
 int dev_warn (struct device*,char*,int,int ) ;
 TYPE_1__* info ;
 int topology_physical_package_id (int ) ;

__attribute__((used)) static int ve_init_opp_table(struct device *cpu_dev)
{
 int cluster;
 int idx, ret = 0, max_opp;
 struct ve_spc_opp *opps;

 cluster = topology_physical_package_id(cpu_dev->id);
 cluster = cluster < 0 ? 0 : cluster;

 max_opp = info->num_opps[cluster];
 opps = info->opps[cluster];

 for (idx = 0; idx < max_opp; idx++, opps++) {
  ret = dev_pm_opp_add(cpu_dev, opps->freq * 1000, opps->u_volt);
  if (ret) {
   dev_warn(cpu_dev, "failed to add opp %lu %lu\n",
     opps->freq, opps->u_volt);
   return ret;
  }
 }
 return ret;
}
