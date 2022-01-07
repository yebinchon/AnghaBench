
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_remove_platform_device_by_name (char*) ;

void ipmi_si_hotmod_exit(void)
{
 ipmi_remove_platform_device_by_name("hotmod-ipmi-si");
}
