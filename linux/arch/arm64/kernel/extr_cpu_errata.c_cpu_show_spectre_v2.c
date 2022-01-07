
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;





 int get_spectre_v2_workaround_state () ;
 int sprintf (char*,char*) ;

ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 switch (get_spectre_v2_workaround_state()) {
 case 130:
  return sprintf(buf, "Not affected\n");
        case 128:
  return sprintf(buf, "Mitigation: Branch predictor hardening\n");
        case 129:
 default:
  return sprintf(buf, "Vulnerable\n");
 }
}
