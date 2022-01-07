
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int date_format; } ;


 char* clean_date_time_format (int ) ;
 TYPE_1__ conf ;
 scalar_t__ has_timestamp (int ) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
set_format_date (void)
{
  char *fdate = ((void*)0);

  if (has_timestamp (conf.date_format))
    fdate = xstrdup ("%Y%m%d");
  else
    fdate = clean_date_time_format (conf.date_format);

  return fdate;
}
