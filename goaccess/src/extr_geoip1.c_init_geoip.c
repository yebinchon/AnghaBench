
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int geo_db; int * geoip_database; } ;


 int GeoIP_new (int ) ;
 TYPE_1__ conf ;
 int geo_location_data ;
 int geoip_open_db (int *) ;

void
init_geoip (void)
{

  if (conf.geoip_database != ((void*)0))
    geo_location_data = geoip_open_db (conf.geoip_database);

  else
    geo_location_data = GeoIP_new (conf.geo_db);
}
