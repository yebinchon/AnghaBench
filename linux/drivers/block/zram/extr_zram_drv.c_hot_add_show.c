
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int) ;
 int zram_add () ;
 int zram_index_mutex ;

__attribute__((used)) static ssize_t hot_add_show(struct class *class,
   struct class_attribute *attr,
   char *buf)
{
 int ret;

 mutex_lock(&zram_index_mutex);
 ret = zram_add();
 mutex_unlock(&zram_index_mutex);

 if (ret < 0)
  return ret;
 return scnprintf(buf, PAGE_SIZE, "%d\n", ret);
}
