
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct cpu {TYPE_1__ dev; } ;


 int MACHINE_HAS_TOPOLOGY ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int topology_cpu_attr_group ;
 int topology_extra_cpu_attr_group ;

int topology_cpu_init(struct cpu *cpu)
{
 int rc;

 rc = sysfs_create_group(&cpu->dev.kobj, &topology_cpu_attr_group);
 if (rc || !MACHINE_HAS_TOPOLOGY)
  return rc;
 rc = sysfs_create_group(&cpu->dev.kobj, &topology_extra_cpu_attr_group);
 if (rc)
  sysfs_remove_group(&cpu->dev.kobj, &topology_cpu_attr_group);
 return rc;
}
