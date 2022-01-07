
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long vmware_tsc_khz ;

__attribute__((used)) static unsigned long vmware_get_tsc_khz(void)
{
 return vmware_tsc_khz;
}
