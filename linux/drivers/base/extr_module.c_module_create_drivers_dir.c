
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_kobject {int kobj; scalar_t__ drivers_dir; } ;
typedef int DEFINE_MUTEX ;


 scalar_t__ kobject_create_and_add (char*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void module_create_drivers_dir(struct module_kobject *mk)
{
 static DEFINE_MUTEX(drivers_dir_mutex);

 mutex_lock(&drivers_dir_mutex);
 if (mk && !mk->drivers_dir)
  mk->drivers_dir = kobject_create_and_add("drivers", &mk->kobj);
 mutex_unlock(&drivers_dir_mutex);
}
