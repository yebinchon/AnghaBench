
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int MACHINE_IS_VM ;
 int firmware_kobj ;
 TYPE_1__* kset_create_and_add (char*,int *,int ) ;
 int sysfs_create_group (int *,int *) ;
 int vmcmd_attr_group ;
 TYPE_1__* vmcmd_kset ;

__attribute__((used)) static int vmcmd_init(void)
{
 if (!MACHINE_IS_VM)
  return -EOPNOTSUPP;
 vmcmd_kset = kset_create_and_add("vmcmd", ((void*)0), firmware_kobj);
 if (!vmcmd_kset)
  return -ENOMEM;
 return sysfs_create_group(&vmcmd_kset->kobj, &vmcmd_attr_group);
}
