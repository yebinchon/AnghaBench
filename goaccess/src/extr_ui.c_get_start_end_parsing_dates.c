
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* spec_date_time_num_format; } ;
struct TYPE_5__ {int idx; } ;
typedef TYPE_1__ GHolder ;


 int VISITORS ;
 TYPE_4__ conf ;
 int free (char**) ;
 char* get_visitors_date (char*,char const*,char const*) ;
 char** get_visitors_dates (TYPE_1__*) ;

int
get_start_end_parsing_dates (GHolder * h, char **start, char **end,
                             const char *f)
{
  char **dates = ((void*)0);
  const char *sndfmt = conf.spec_date_time_num_format;

  if (h->idx == 0)
    return 1;

  dates = get_visitors_dates (h + VISITORS);


  *start = get_visitors_date (dates[0], sndfmt, f);
  *end = get_visitors_date (dates[h->idx - 1], sndfmt, f);

  free (dates);

  return 0;
}
