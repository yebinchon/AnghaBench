
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * geoip_database; } ;
typedef int GTypeIP ;






 unsigned char GeoIP_database_edition (int *) ;
 int TYPE_IPV4 ;
 int TYPE_IPV6 ;
 TYPE_1__ conf ;
 int * geo_location_data ;
 int geoip_set_city (int *,int *,char*) ;
 int geoip_set_city_by_record (char const*,char*,int ) ;

void
geoip_get_city (const char *ip, char *location, GTypeIP type_ip)
{
  unsigned char rec = GeoIP_database_edition (geo_location_data);

  if (conf.geoip_database == ((void*)0) || geo_location_data == ((void*)0))
    return;

  switch (rec) {
  case 131:
  case 129:
    if (TYPE_IPV4 == type_ip)
      geoip_set_city_by_record (ip, location, TYPE_IPV4);
    else
      geoip_set_city (((void*)0), ((void*)0), location);
    break;
  case 130:
  case 128:
    if (TYPE_IPV6 == type_ip)
      geoip_set_city_by_record (ip, location, TYPE_IPV6);
    else
      geoip_set_city (((void*)0), ((void*)0), location);
    break;
  }
}
