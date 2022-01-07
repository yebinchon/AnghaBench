
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ geoip_database; } ;


 TYPE_1__ conf ;
 int geoip_get_city (char*,char*,int) ;
 int geoip_get_continent (char*,char*,int) ;
 int geoip_get_country (char*,char*,int) ;
 scalar_t__ invalid_ipaddr (char*,int*) ;
 int is_geoip_resource () ;

int
set_geolocation (char *host, char *continent, char *country, char *city)
{
  int type_ip = 0;

  if (!is_geoip_resource ())
    return 1;

  if (invalid_ipaddr (host, &type_ip))
    return 1;

  geoip_get_country (host, country, type_ip);
  geoip_get_continent (host, continent, type_ip);
  if (conf.geoip_database)
    geoip_get_city (host, city, type_ip);

  return 0;
}
