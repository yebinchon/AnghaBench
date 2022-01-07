
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {struct cpufreq_governor* governor; } ;
struct cpufreq_governor {int owner; } ;


 int EINVAL ;
 int cpufreq_governor_mutex ;
 struct cpufreq_governor* find_governor (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_module (char*,char*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int cpufreq_parse_governor(char *str_governor,
      struct cpufreq_policy *policy)
{
 struct cpufreq_governor *t;

 mutex_lock(&cpufreq_governor_mutex);

 t = find_governor(str_governor);
 if (!t) {
  int ret;

  mutex_unlock(&cpufreq_governor_mutex);

  ret = request_module("cpufreq_%s", str_governor);
  if (ret)
   return -EINVAL;

  mutex_lock(&cpufreq_governor_mutex);

  t = find_governor(str_governor);
 }
 if (t && !try_module_get(t->owner))
  t = ((void*)0);

 mutex_unlock(&cpufreq_governor_mutex);

 if (t) {
  policy->governor = t;
  return 0;
 }

 return -EINVAL;
}
