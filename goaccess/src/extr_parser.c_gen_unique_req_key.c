
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_4__ {int protocol; int method; int req; } ;
typedef TYPE_1__ GLogItem ;


 TYPE_3__ conf ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;
 char* xcalloc (size_t,int) ;
 char* xstrdup (int ) ;

__attribute__((used)) static char *
gen_unique_req_key (GLogItem * logitem)
{
  char *key = ((void*)0);
  size_t s1 = 0, s2 = 0, s3 = 0, nul = 1, sep = 0;


  if (!conf.append_method && !conf.append_protocol)
    return xstrdup (logitem->req);

  if (!logitem->method && !logitem->protocol)
    return xstrdup (logitem->req);

  s1 = strlen (logitem->req);
  if (logitem->method && conf.append_method) {
    s2 = strlen (logitem->method);
    nul++;
  }
  if (logitem->protocol && conf.append_protocol) {
    s3 = strlen (logitem->protocol);
    nul++;
  }


  key = xcalloc (s1 + s2 + s3 + nul, sizeof (char));

  memcpy (key, logitem->req, s1);

  if (logitem->method && conf.append_method) {
    key[s1] = '|';
    sep++;
    memcpy (key + s1 + sep, logitem->method, s2 + 1);
  }
  if (logitem->protocol && conf.append_protocol) {
    key[s1 + s2 + sep] = '|';
    sep++;
    memcpy (key + s1 + s2 + sep, logitem->protocol, s3 + 1);
  }

  return key;
}
