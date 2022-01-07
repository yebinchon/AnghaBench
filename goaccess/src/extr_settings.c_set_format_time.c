
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time_format; int date_format; } ;


 char* clean_date_time_format (int ) ;
 TYPE_1__ conf ;
 scalar_t__ has_timestamp (int ) ;
 int strcmp (char*,int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
set_format_time (void)
{
  char *ftime = ((void*)0);

  if (has_timestamp (conf.date_format) || !strcmp ("%T", conf.time_format))
    ftime = xstrdup ("%H%M%S");
  else
    ftime = clean_date_time_format (conf.time_format);

  return ftime;
}
