
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int alt_stfle_fac_list; } ;


 int CC_USING_EXPOLINE ;
 TYPE_1__ S390_lowcore ;
 scalar_t__ __is_defined (int ) ;
 scalar_t__ __test_facility (int,int ) ;
 int nospec_disable ;
 int sprintf (char*,char*) ;
 scalar_t__ test_facility (int) ;

ssize_t cpu_show_spectre_v2(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 if (test_facility(156))
  return sprintf(buf, "Mitigation: etokens\n");
 if (__is_defined(CC_USING_EXPOLINE) && !nospec_disable)
  return sprintf(buf, "Mitigation: execute trampolines\n");
 if (__test_facility(82, S390_lowcore.alt_stfle_fac_list))
  return sprintf(buf, "Mitigation: limited branch prediction\n");
 return sprintf(buf, "Vulnerable\n");
}
