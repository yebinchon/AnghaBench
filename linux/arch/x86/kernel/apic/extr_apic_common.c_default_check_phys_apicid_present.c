
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int phys_cpu_present_map ;
 int physid_isset (int,int ) ;

int default_check_phys_apicid_present(int phys_apicid)
{
 return physid_isset(phys_apicid, phys_cpu_present_map);
}
