
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; } ;
struct device {int dummy; } ;


 int DEVHASH ;
 int DEVSEED ;
 unsigned int FILEHASH ;
 unsigned int USERHASH ;
 char* dev_driver_string (struct device*) ;
 int dev_name (struct device*) ;
 int device_pm_lock () ;
 int device_pm_unlock () ;
 struct list_head dpm_list ;
 unsigned int hash_string (int ,int ,int ) ;
 unsigned int hash_value_early_read ;
 int snprintf (char*,size_t,char*,char*) ;
 struct device* to_device (struct list_head*) ;

int show_trace_dev_match(char *buf, size_t size)
{
 unsigned int value = hash_value_early_read / (USERHASH * FILEHASH);
 int ret = 0;
 struct list_head *entry;





 device_pm_lock();
 entry = dpm_list.prev;
 while (size && entry != &dpm_list) {
  struct device *dev = to_device(entry);
  unsigned int hash = hash_string(DEVSEED, dev_name(dev),
      DEVHASH);
  if (hash == value) {
   int len = snprintf(buf, size, "%s\n",
         dev_driver_string(dev));
   if (len > size)
    len = size;
   buf += len;
   ret += len;
   size -= len;
  }
  entry = entry->prev;
 }
 device_pm_unlock();
 return ret;
}
