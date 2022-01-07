
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * mmdb ;

int
is_geoip_resource (void)
{
  return mmdb != ((void*)0) ? 1 : 0;
}
