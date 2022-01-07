
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * geo_location_data ;

int
is_geoip_resource (void)
{
  return geo_location_data != ((void*)0) ? 1 : 0;
}
