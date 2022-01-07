
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int kref; } ;
struct device {int dummy; } ;


 int gdp_mutex ;
 int kobject_del (struct kobject*) ;
 int kobject_has_children (struct kobject*) ;
 int kobject_put (struct kobject*) ;
 unsigned int kref_read (int *) ;
 int live_in_glue_dir (struct kobject*,struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cleanup_glue_dir(struct device *dev, struct kobject *glue_dir)
{
 unsigned int ref;


 if (!live_in_glue_dir(glue_dir, dev))
  return;

 mutex_lock(&gdp_mutex);
 ref = kref_read(&glue_dir->kref);
 if (!kobject_has_children(glue_dir) && !--ref)
  kobject_del(glue_dir);
 kobject_put(glue_dir);
 mutex_unlock(&gdp_mutex);
}
