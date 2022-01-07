
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GTypeIP ;


 char* GeoIP_continent_by_id (int) ;
 int geoip_get_geoid (char const*,int ) ;
 int geoip_set_continent (char const*,char*) ;
 int is_geoip_resource () ;

__attribute__((used)) static void
geoip_set_continent_by_geoid (const char *ip, char *location, GTypeIP type_ip)
{
  const char *continent = ((void*)0), *addr = ip;
  int geoid = 0;

  if (!is_geoip_resource ())
    return;

  if (!(geoid = geoip_get_geoid (addr, type_ip)))
    goto out;
  continent = GeoIP_continent_by_id (geoid);

out:
  geoip_set_continent (continent, location);
}
