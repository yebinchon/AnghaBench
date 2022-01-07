
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int found_entry; } ;
typedef TYPE_1__ MMDB_lookup_result_s ;


 int FATAL (char*,int ) ;
 int MMDB_SUCCESS ;
 TYPE_1__ MMDB_lookup_string (int ,char const*,int*,int*) ;
 int MMDB_strerror (int) ;
 int mmdb ;

__attribute__((used)) static int
geoip_lookup (MMDB_lookup_result_s * res, const char *ip)
{
  int gai_err, mmdb_err;

  *res = MMDB_lookup_string (mmdb, ip, &gai_err, &mmdb_err);
  if (0 != gai_err)
    return 1;

  if (MMDB_SUCCESS != mmdb_err)
    FATAL ("Error from libmaxminddb: %s\n", MMDB_strerror (mmdb_err));

  if (!(*res).found_entry)
    return 1;

  return 0;
}
