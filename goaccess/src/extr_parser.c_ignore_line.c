
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ignore_statics; scalar_t__ ignore_qstr; } ;
struct TYPE_5__ {int req; int status; int site; int agent; } ;
typedef TYPE_1__ GLogItem ;
typedef int GLog ;


 int IGNORE_LEVEL_PANEL ;
 TYPE_4__ conf ;
 scalar_t__ excluded_ip (int *,TYPE_1__*) ;
 scalar_t__ handle_crawler (int ) ;
 scalar_t__ ignore_referer (int ) ;
 scalar_t__ ignore_static (int ) ;
 scalar_t__ ignore_status_code (int ) ;
 int strip_qstring (int ) ;

__attribute__((used)) static int
ignore_line (GLog * glog, GLogItem * logitem)
{
  if (excluded_ip (glog, logitem) == 0)
    return IGNORE_LEVEL_PANEL;
  if (handle_crawler (logitem->agent) == 0)
    return IGNORE_LEVEL_PANEL;
  if (ignore_referer (logitem->site))
    return IGNORE_LEVEL_PANEL;
  if (ignore_status_code (logitem->status))
    return IGNORE_LEVEL_PANEL;
  if (ignore_static (logitem->req))
    return conf.ignore_statics;


  if (conf.ignore_qstr)
    strip_qstring (logitem->req);

  return 0;
}
