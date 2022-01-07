
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int client_err_to_unique_count; } ;
struct TYPE_4__ {char* status; } ;
typedef TYPE_1__ GLogItem ;


 TYPE_3__ conf ;

__attribute__((used)) static int
include_uniq (GLogItem * logitem)
{
  int u = conf.client_err_to_unique_count;

  if (!logitem->status || logitem->status[0] != '4' ||
      (u && logitem->status[0] == '4'))
    return 1;
  return 0;
}
