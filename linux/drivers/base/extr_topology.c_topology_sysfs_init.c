
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_TOPOLOGY_PREPARE ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int topology_add_dev ;
 int topology_remove_dev ;

__attribute__((used)) static int topology_sysfs_init(void)
{
 return cpuhp_setup_state(CPUHP_TOPOLOGY_PREPARE,
     "base/topology:prepare", topology_add_dev,
     topology_remove_dev);
}
