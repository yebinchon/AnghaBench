
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ invalid_requests_log; } ;
struct TYPE_6__ {scalar_t__ invalid; TYPE_1__* items; int log_erridx; int * errors; } ;
struct TYPE_5__ {scalar_t__ errstr; } ;
typedef TYPE_2__ GLog ;


 int LOG_INVALID (char*) ;
 scalar_t__ MAX_LOG_ERRORS ;
 TYPE_4__ conf ;
 int ht_insert_genstats (char*,int) ;
 int * xcalloc (scalar_t__,int) ;
 int xstrdup (scalar_t__) ;

__attribute__((used)) static void
count_invalid (GLog * glog, const char *line)
{
  glog->invalid++;



  if (conf.invalid_requests_log) {
    LOG_INVALID (("%s", line));
  }

  if (glog->items->errstr && glog->invalid < MAX_LOG_ERRORS) {
    if (glog->errors == ((void*)0))
      glog->errors = xcalloc (MAX_LOG_ERRORS, sizeof (char *));
    glog->errors[glog->log_erridx++] = xstrdup (glog->items->errstr);
  }
}
