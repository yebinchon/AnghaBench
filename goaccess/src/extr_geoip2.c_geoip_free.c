
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMDB_close (int *) ;
 int free (int *) ;
 int is_geoip_resource () ;
 int * mmdb ;

void
geoip_free (void)
{
  if (!is_geoip_resource ())
    return;

  MMDB_close (mmdb);
  free (mmdb);
  mmdb = ((void*)0);
}
