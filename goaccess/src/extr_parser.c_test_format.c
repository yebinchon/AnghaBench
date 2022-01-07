
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int log_erridx; int * errors; } ;
typedef TYPE_1__ GLog ;


 int free_logerrors (TYPE_1__*) ;
 scalar_t__ parse_log (TYPE_1__**,int *,int) ;
 char** xcalloc (int,int) ;
 char* xstrdup (int ) ;

char **
test_format (GLog * glog, int *len)
{
  char **errors = ((void*)0);
  int i;

  if (parse_log (&glog, ((void*)0), 1) == 0)
    goto clean;

  errors = xcalloc (glog->log_erridx, sizeof (char *));
  for (i = 0; i < glog->log_erridx; ++i)
    errors[i] = xstrdup (glog->errors[i]);
  *len = glog->log_erridx;

clean:
  free_logerrors (glog);

  return errors;
}
