
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GTypeIP ;


 char* GeoIP_country_name_by_name (int ,char const*) ;
 char* GeoIP_country_name_by_name_v6 (int ,char const*) ;
 scalar_t__ TYPE_IPV4 ;
 scalar_t__ TYPE_IPV6 ;
 int geo_location_data ;

__attribute__((used)) static const char *
geoip_get_country_by_geoid (const char *addr, GTypeIP type_ip)
{
  const char *country = ((void*)0);

  if (TYPE_IPV4 == type_ip)
    country = GeoIP_country_name_by_name (geo_location_data, addr);
  else if (TYPE_IPV6 == type_ip)
    country = GeoIP_country_name_by_name_v6 (geo_location_data, addr);

  return country;
}
