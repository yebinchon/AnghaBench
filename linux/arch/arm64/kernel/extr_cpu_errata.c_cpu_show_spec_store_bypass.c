
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;




 int CONFIG_ARM64_SSBD ;
 int IS_ENABLED (int ) ;
 scalar_t__ __ssb_safe ;
 int sprintf (char*,char*) ;
 int ssbd_state ;

ssize_t cpu_show_spec_store_bypass(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 if (__ssb_safe)
  return sprintf(buf, "Not affected\n");

 switch (ssbd_state) {
 case 128:
 case 129:
  if (IS_ENABLED(CONFIG_ARM64_SSBD))
   return sprintf(buf,
       "Mitigation: Speculative Store Bypass disabled via prctl\n");
 }

 return sprintf(buf, "Vulnerable\n");
}
