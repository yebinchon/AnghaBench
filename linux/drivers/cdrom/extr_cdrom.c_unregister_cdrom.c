
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int name; int (* exit ) (struct cdrom_device_info*) ;int list; } ;


 int CD_OPEN ;
 int CD_REG_UNREG ;
 int cd_dbg (int ,char*,...) ;
 int cdrom_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cdrom_device_info*) ;

void unregister_cdrom(struct cdrom_device_info *cdi)
{
 cd_dbg(CD_OPEN, "entering unregister_cdrom\n");

 mutex_lock(&cdrom_mutex);
 list_del(&cdi->list);
 mutex_unlock(&cdrom_mutex);

 if (cdi->exit)
  cdi->exit(cdi);

 cd_dbg(CD_REG_UNREG, "drive \"/dev/%s\" unregistered\n", cdi->name);
}
