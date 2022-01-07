
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
 int cmm_dbg (char*) ;
 int cmm_mem_going_offline (void*) ;
 int hotplug_mutex ;
 int hotplug_occurred ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notifier_from_errno (int) ;

__attribute__((used)) static int cmm_memory_cb(struct notifier_block *self,
   unsigned long action, void *arg)
{
 int ret = 0;

 switch (action) {
 case 131:
  mutex_lock(&hotplug_mutex);
  hotplug_occurred = 1;
  ret = cmm_mem_going_offline(arg);
  break;
 case 129:
 case 133:
  mutex_unlock(&hotplug_mutex);
  cmm_dbg("Memory offline operation complete.\n");
  break;
 case 130:
 case 128:
 case 132:
  break;
 }

 return notifier_from_errno(ret);
}
