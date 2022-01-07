
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int dummy; } ;
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENODEV ;
 struct zram* idr_find (int *,int) ;
 int idr_remove (int *,int) ;
 int kstrtoint (char const*,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zram_index_idr ;
 int zram_index_mutex ;
 int zram_remove (struct zram*) ;

__attribute__((used)) static ssize_t hot_remove_store(struct class *class,
   struct class_attribute *attr,
   const char *buf,
   size_t count)
{
 struct zram *zram;
 int ret, dev_id;


 ret = kstrtoint(buf, 10, &dev_id);
 if (ret)
  return ret;
 if (dev_id < 0)
  return -EINVAL;

 mutex_lock(&zram_index_mutex);

 zram = idr_find(&zram_index_idr, dev_id);
 if (zram) {
  ret = zram_remove(zram);
  if (!ret)
   idr_remove(&zram_index_idr, dev_id);
 } else {
  ret = -ENODEV;
 }

 mutex_unlock(&zram_index_mutex);
 return ret ? ret : count;
}
