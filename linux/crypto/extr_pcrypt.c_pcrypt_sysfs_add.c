
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kset; } ;
struct padata_instance {TYPE_1__ kobj; } ;


 int KOBJ_ADD ;
 int kobject_add (TYPE_1__*,int *,char*,char const*) ;
 int kobject_uevent (TYPE_1__*,int ) ;
 int pcrypt_kset ;

__attribute__((used)) static int pcrypt_sysfs_add(struct padata_instance *pinst, const char *name)
{
 int ret;

 pinst->kobj.kset = pcrypt_kset;
 ret = kobject_add(&pinst->kobj, ((void*)0), "%s", name);
 if (!ret)
  kobject_uevent(&pinst->kobj, KOBJ_ADD);

 return ret;
}
