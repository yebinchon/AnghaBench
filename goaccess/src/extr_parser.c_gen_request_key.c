
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ is_static; scalar_t__ is_404; int req; } ;
typedef TYPE_1__ GLogItem ;
typedef int GKeyData ;


 int gen_req_key (int *,TYPE_1__*) ;

__attribute__((used)) static int
gen_request_key (GKeyData * kdata, GLogItem * logitem)
{
  if (!logitem->req || logitem->is_404 || logitem->is_static)
    return 1;

  return gen_req_key (kdata, logitem);
}
