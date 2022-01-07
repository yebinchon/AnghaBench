
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GeoIP ;


 int FATAL (char*,char const*) ;
 int GEOIP_CHARSET_UTF8 ;
 int GEOIP_MEMORY_CACHE ;
 int * GeoIP_open (char const*,int ) ;
 int GeoIP_set_charset (int *,int ) ;
 int LOG_DEBUG (char*) ;

__attribute__((used)) static GeoIP *
geoip_open_db (const char *db)
{
  GeoIP *geoip;
  geoip = GeoIP_open (db, GEOIP_MEMORY_CACHE);

  if (geoip == ((void*)0))
    FATAL ("Unable to open GeoIP database: %s\n", db);

  GeoIP_set_charset (geoip, GEOIP_CHARSET_UTF8);
  LOG_DEBUG (("Opened GeoIP City database: %s\n", db));

  return geoip;
}
