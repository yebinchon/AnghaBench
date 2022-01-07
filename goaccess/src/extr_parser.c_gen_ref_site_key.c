
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* site; } ;
typedef TYPE_1__ GLogItem ;
typedef int GKeyData ;


 int get_kdata (int *,char*,char*) ;

__attribute__((used)) static int
gen_ref_site_key (GKeyData * kdata, GLogItem * logitem)
{
  if (logitem->site[0] == '\0')
    return 1;

  get_kdata (kdata, logitem->site, logitem->site);

  return 0;
}
