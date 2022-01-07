
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* geoip_database; } ;
struct TYPE_7__ {int database_type; } ;
struct TYPE_8__ {TYPE_1__ metadata; } ;
typedef int MMDB_s ;


 int FATAL (char*,char const*) ;
 int MMDB_MODE_MMAP ;
 int MMDB_SUCCESS ;
 int MMDB_open (char const*,int ,TYPE_2__*) ;
 TYPE_5__ conf ;
 int free (TYPE_2__*) ;
 int geoip_city_type ;
 TYPE_2__* mmdb ;
 scalar_t__ strcmp (int ,char*) ;
 TYPE_2__* xcalloc (int,int) ;

void
init_geoip (void)
{
  const char *fn = conf.geoip_database;
  int status = 0;

  if (fn == ((void*)0))
    return;


  mmdb = xcalloc (1, sizeof (MMDB_s));
  if ((status = MMDB_open (fn, MMDB_MODE_MMAP, mmdb)) != MMDB_SUCCESS) {
    free (mmdb);
    FATAL ("Unable to open GeoIP2 database: %s\n", fn);
  }

  if (strcmp (mmdb->metadata.database_type, "GeoLite2-City") == 0)
    geoip_city_type = 1;
}
