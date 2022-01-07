
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* vhost; struct TYPE_4__* userid; struct TYPE_4__* uniq_key; struct TYPE_4__* time; struct TYPE_4__* status; struct TYPE_4__* req; struct TYPE_4__* req_key; struct TYPE_4__* ref; struct TYPE_4__* qstr; struct TYPE_4__* protocol; struct TYPE_4__* os_type; struct TYPE_4__* os; struct TYPE_4__* method; struct TYPE_4__* keyphrase; struct TYPE_4__* host; struct TYPE_4__* errstr; struct TYPE_4__* date; struct TYPE_4__* country; struct TYPE_4__* continent; struct TYPE_4__* browser_type; struct TYPE_4__* browser; struct TYPE_4__* agent; } ;
typedef TYPE_1__ GLogItem ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_glog (GLogItem * logitem)
{
  if (logitem->agent != ((void*)0))
    free (logitem->agent);
  if (logitem->browser != ((void*)0))
    free (logitem->browser);
  if (logitem->browser_type != ((void*)0))
    free (logitem->browser_type);
  if (logitem->continent != ((void*)0))
    free (logitem->continent);
  if (logitem->country != ((void*)0))
    free (logitem->country);
  if (logitem->date != ((void*)0))
    free (logitem->date);
  if (logitem->errstr != ((void*)0))
    free (logitem->errstr);
  if (logitem->host != ((void*)0))
    free (logitem->host);
  if (logitem->keyphrase != ((void*)0))
    free (logitem->keyphrase);
  if (logitem->method != ((void*)0))
    free (logitem->method);
  if (logitem->os != ((void*)0))
    free (logitem->os);
  if (logitem->os_type != ((void*)0))
    free (logitem->os_type);
  if (logitem->protocol != ((void*)0))
    free (logitem->protocol);
  if (logitem->qstr != ((void*)0))
    free (logitem->qstr);
  if (logitem->ref != ((void*)0))
    free (logitem->ref);
  if (logitem->req_key != ((void*)0))
    free (logitem->req_key);
  if (logitem->req != ((void*)0))
    free (logitem->req);
  if (logitem->status != ((void*)0))
    free (logitem->status);
  if (logitem->time != ((void*)0))
    free (logitem->time);
  if (logitem->uniq_key != ((void*)0))
    free (logitem->uniq_key);
  if (logitem->userid != ((void*)0))
    free (logitem->userid);
  if (logitem->vhost != ((void*)0))
    free (logitem->vhost);

  free (logitem);
}
