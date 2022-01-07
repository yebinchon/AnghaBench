
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GeoIPRecord ;
typedef scalar_t__ GTypeIP ;


 int * GeoIP_record_by_name (int ,char const*) ;
 int * GeoIP_record_by_name_v6 (int ,char const*) ;
 scalar_t__ TYPE_IPV4 ;
 scalar_t__ TYPE_IPV6 ;
 int geo_location_data ;

__attribute__((used)) static GeoIPRecord *
get_geoip_record (const char *addr, GTypeIP type_ip)
{
  GeoIPRecord *rec = ((void*)0);

  if (TYPE_IPV4 == type_ip)
    rec = GeoIP_record_by_name (geo_location_data, addr);
  else if (TYPE_IPV6 == type_ip)
    rec = GeoIP_record_by_name_v6 (geo_location_data, addr);

  return rec;
}
