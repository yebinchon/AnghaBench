
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int intel_cpufreq ;
 int intel_pstate ;
 int * intel_pstate_driver ;
 int intel_pstate_register_driver (int *) ;
 int intel_pstate_unregister_driver () ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int intel_pstate_update_status(const char *buf, size_t size)
{
 int ret;

 if (size == 3 && !strncmp(buf, "off", size))
  return intel_pstate_driver ?
   intel_pstate_unregister_driver() : -EINVAL;

 if (size == 6 && !strncmp(buf, "active", size)) {
  if (intel_pstate_driver) {
   if (intel_pstate_driver == &intel_pstate)
    return 0;

   ret = intel_pstate_unregister_driver();
   if (ret)
    return ret;
  }

  return intel_pstate_register_driver(&intel_pstate);
 }

 if (size == 7 && !strncmp(buf, "passive", size)) {
  if (intel_pstate_driver) {
   if (intel_pstate_driver == &intel_cpufreq)
    return 0;

   ret = intel_pstate_unregister_driver();
   if (ret)
    return ret;
  }

  return intel_pstate_register_driver(&intel_cpufreq);
 }

 return -EINVAL;
}
