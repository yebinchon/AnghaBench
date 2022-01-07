
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void set_disk_ro_uevent(struct gendisk *gd, int ro)
{
 char event[] = "DISK_RO=1";
 char *envp[] = { event, ((void*)0) };

 if (!ro)
  event[8] = '0';
 kobject_uevent_env(&disk_to_dev(gd)->kobj, KOBJ_CHANGE, envp);
}
