
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMDB_lookup_result_s ;


 scalar_t__ geoip_city_type ;
 int geoip_lookup (int *,char*) ;
 int geoip_query_city (int ,char*) ;
 int geoip_query_continent (int ,char*) ;
 int geoip_query_country (int ,char*) ;
 int is_geoip_resource () ;

int
set_geolocation (char *host, char *continent, char *country, char *city)
{
  MMDB_lookup_result_s res;

  if (!is_geoip_resource ())
    return 1;

  geoip_lookup (&res, host);
  geoip_query_country (res, country);
  geoip_query_continent (res, continent);
  if (geoip_city_type)
    geoip_query_city (res, city);

  return 0;
}
