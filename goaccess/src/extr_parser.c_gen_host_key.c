
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int host; } ;
typedef TYPE_1__ GLogItem ;
typedef int GKeyData ;


 int get_kdata (int *,int ,int ) ;

__attribute__((used)) static int
gen_host_key (GKeyData * kdata, GLogItem * logitem)
{
  if (!logitem->host)
    return 1;

  get_kdata (kdata, logitem->host, logitem->host);

  return 0;
}
