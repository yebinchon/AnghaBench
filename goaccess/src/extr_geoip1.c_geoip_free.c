
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GeoIP_cleanup () ;
 int GeoIP_delete (int ) ;
 int geo_location_data ;
 int is_geoip_resource () ;

void
geoip_free (void)
{
  if (!is_geoip_resource ())
    return;

  GeoIP_delete (geo_location_data);
  GeoIP_cleanup ();
}
