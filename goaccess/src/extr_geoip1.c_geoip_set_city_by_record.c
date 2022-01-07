
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* city; char* region; } ;
typedef TYPE_1__ GeoIPRecord ;
typedef int GTypeIP ;


 int GeoIPRecord_delete (TYPE_1__*) ;
 int geoip_set_city (char const*,char const*,char*) ;
 TYPE_1__* get_geoip_record (char const*,int ) ;

__attribute__((used)) static void
geoip_set_city_by_record (const char *ip, char *location, GTypeIP type_ip)
{
  GeoIPRecord *rec = ((void*)0);
  const char *city = ((void*)0), *region = ((void*)0), *addr = ip;


  if ((rec = get_geoip_record (addr, type_ip))) {
    city = rec->city;
    region = rec->region;
  }

  geoip_set_city (city, region, location);
  if (rec != ((void*)0)) {
    GeoIPRecord_delete (rec);
  }
}
