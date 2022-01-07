
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ req; int req_key; scalar_t__ qstr; } ;
typedef TYPE_1__ GLogItem ;
typedef int GKeyData ;


 int append_query_string (scalar_t__*,scalar_t__) ;
 int gen_unique_req_key (TYPE_1__*) ;
 int get_kdata (int *,int ,scalar_t__) ;

__attribute__((used)) static int
gen_req_key (GKeyData * kdata, GLogItem * logitem)
{
  if (logitem->req && logitem->qstr)
    append_query_string (&logitem->req, logitem->qstr);
  logitem->req_key = gen_unique_req_key (logitem);

  get_kdata (kdata, logitem->req_key, logitem->req);

  return 0;
}
