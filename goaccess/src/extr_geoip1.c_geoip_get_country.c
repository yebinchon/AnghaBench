
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GTypeIP ;
 unsigned char GeoIP_database_edition (int ) ;
 int TYPE_IPV4 ;
 int TYPE_IPV6 ;
 int geo_location_data ;
 int geoip_set_country (int *,int *,char*) ;
 int geoip_set_country_by_geoid (char const*,char*,int ) ;
 int geoip_set_country_by_record (char const*,char*,int ) ;

void
geoip_get_country (const char *ip, char *location, GTypeIP type_ip)
{
  unsigned char rec = GeoIP_database_edition (geo_location_data);

  switch (rec) {
  case 129:
    if (TYPE_IPV4 == type_ip)
      geoip_set_country_by_geoid (ip, location, TYPE_IPV4);
    else
      geoip_set_country (((void*)0), ((void*)0), location);
    break;
  case 128:
    if (TYPE_IPV6 == type_ip)
      geoip_set_country_by_geoid (ip, location, TYPE_IPV6);
    else
      geoip_set_country (((void*)0), ((void*)0), location);
    break;
  case 133:
  case 131:
    if (TYPE_IPV4 == type_ip)
      geoip_set_country_by_record (ip, location, TYPE_IPV4);
    else
      geoip_set_country (((void*)0), ((void*)0), location);
    break;
  case 132:
  case 130:
    if (TYPE_IPV6 == type_ip)
      geoip_set_country_by_record (ip, location, TYPE_IPV6);
    else
      geoip_set_country (((void*)0), ((void*)0), location);
    break;
  }
}
