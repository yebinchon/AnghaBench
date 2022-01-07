
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_watcher {int link; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smi_watchers_mutex ;

int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher)
{
 mutex_lock(&smi_watchers_mutex);
 list_del(&watcher->link);
 mutex_unlock(&smi_watchers_mutex);
 return 0;
}
