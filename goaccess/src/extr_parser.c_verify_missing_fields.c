
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * errstr; int * req; int * date; int * host; } ;
typedef TYPE_1__ GLogItem ;


 void* xstrdup (char*) ;

__attribute__((used)) static int
verify_missing_fields (GLogItem * logitem)
{

  if (logitem->host == ((void*)0))
    logitem->errstr = xstrdup ("IPv4/6 is required.");
  else if (logitem->date == ((void*)0))
    logitem->errstr = xstrdup ("A valid date is required.");
  else if (logitem->req == ((void*)0))
    logitem->errstr = xstrdup ("A request is required.");

  return logitem->errstr != ((void*)0);
}
