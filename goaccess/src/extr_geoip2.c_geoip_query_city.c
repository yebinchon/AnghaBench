
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ found_entry; } ;
typedef TYPE_1__ MMDB_lookup_result_s ;


 int geoip_set_city (char*,char*,char*) ;
 char* get_value (TYPE_1__,char*,char*,char*,char*,...) ;

__attribute__((used)) static void
geoip_query_city (MMDB_lookup_result_s res, char *location)
{
  char *city = ((void*)0), *region = ((void*)0);

  if (res.found_entry) {
    city = get_value (res, "city", "names", "en", ((void*)0));
    region = get_value (res, "subdivisions", "0", "names", "en", ((void*)0));
  }
  geoip_set_city (city, region, location);
}
