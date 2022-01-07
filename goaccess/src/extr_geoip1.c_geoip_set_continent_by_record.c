
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * geoip_database; } ;
struct TYPE_5__ {char* continent_code; } ;
typedef TYPE_1__ GeoIPRecord ;
typedef int GTypeIP ;


 int GeoIPRecord_delete (TYPE_1__*) ;
 TYPE_3__ conf ;
 int * geo_location_data ;
 int geoip_set_continent (char const*,char*) ;
 TYPE_1__* get_geoip_record (char const*,int ) ;

__attribute__((used)) static void
geoip_set_continent_by_record (const char *ip, char *location, GTypeIP type_ip)
{
  GeoIPRecord *rec = ((void*)0);
  const char *continent = ((void*)0), *addr = ip;

  if (conf.geoip_database == ((void*)0) || geo_location_data == ((void*)0))
    return;


  if ((rec = get_geoip_record (addr, type_ip)))
    continent = rec->continent_code;

  geoip_set_continent (continent, location);
  if (rec != ((void*)0)) {
    GeoIPRecord_delete (rec);
  }
}
