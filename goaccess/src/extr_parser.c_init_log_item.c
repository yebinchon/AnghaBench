
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* items; } ;
struct TYPE_7__ {long long resp_size; struct TYPE_7__* site; int * userid; int * vhost; int * uniq_key; int * time; int * status; scalar_t__ serve_time; int * req; int * req_key; int * ref; int * qstr; int * protocol; int * os_type; int * os; int * method; int * keyphrase; int * host; int * errstr; int * date; int * country; int * continent; int * browser_type; int * browser; int * agent; } ;
typedef TYPE_1__ GLogItem ;
typedef TYPE_2__ GLog ;


 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* xmalloc (int) ;

GLogItem *
init_log_item (GLog * glog)
{
  GLogItem *logitem;
  glog->items = xmalloc (sizeof (GLogItem));
  logitem = glog->items;
  memset (logitem, 0, sizeof *logitem);

  logitem->agent = ((void*)0);
  logitem->browser = ((void*)0);
  logitem->browser_type = ((void*)0);
  logitem->continent = ((void*)0);
  logitem->country = ((void*)0);
  logitem->date = ((void*)0);
  logitem->errstr = ((void*)0);
  logitem->host = ((void*)0);
  logitem->keyphrase = ((void*)0);
  logitem->method = ((void*)0);
  logitem->os = ((void*)0);
  logitem->os_type = ((void*)0);
  logitem->protocol = ((void*)0);
  logitem->qstr = ((void*)0);
  logitem->ref = ((void*)0);
  logitem->req_key = ((void*)0);
  logitem->req = ((void*)0);
  logitem->resp_size = 0LL;
  logitem->serve_time = 0;
  logitem->status = ((void*)0);
  logitem->time = ((void*)0);
  logitem->uniq_key = ((void*)0);
  logitem->vhost = ((void*)0);
  logitem->userid = ((void*)0);

  memset (logitem->site, 0, sizeof (logitem->site));

  return logitem;
}
