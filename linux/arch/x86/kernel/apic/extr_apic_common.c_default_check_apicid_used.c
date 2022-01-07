
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int physid_mask_t ;


 int physid_isset (int,int ) ;

bool default_check_apicid_used(physid_mask_t *map, int apicid)
{
 return physid_isset(apicid, *map);
}
