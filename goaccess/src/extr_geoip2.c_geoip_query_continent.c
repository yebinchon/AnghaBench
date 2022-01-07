
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ found_entry; } ;
typedef TYPE_1__ MMDB_lookup_result_s ;


 int geoip_set_continent (char*,char*) ;
 char* get_value (TYPE_1__,char*,char*,int *) ;

__attribute__((used)) static void
geoip_query_continent (MMDB_lookup_result_s res, char *location)
{
  char *code = ((void*)0);

  if (res.found_entry)
    code = get_value (res, "continent", "code", ((void*)0));
  geoip_set_continent (code, location);
}
