
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_items; scalar_t__ output_format_idx; scalar_t__ real_time_html; int output_stdout; } ;


 int MAX_CHOICES ;
 int MAX_CHOICES_RT ;
 TYPE_1__ conf ;
 scalar_t__ find_output_type (char**,char*,int) ;
 int free (char*) ;

int
get_max_choices (void)
{
  char *csv = ((void*)0), *json = ((void*)0), *html = ((void*)0);
  int max = MAX_CHOICES;


  if (conf.max_items <= 0)
    return conf.real_time_html ? MAX_CHOICES_RT : MAX_CHOICES;


  if (!conf.output_stdout)
    return conf.max_items > MAX_CHOICES ? MAX_CHOICES : conf.max_items;



  if (conf.real_time_html)
    return conf.max_items > MAX_CHOICES_RT ? MAX_CHOICES_RT : conf.max_items;



  if (find_output_type (&csv, "csv", 1) == 0)
    max = conf.max_items;

  if (find_output_type (&json, "json", 1) == 0 && conf.max_items > 0)
    max = conf.max_items;



  if (find_output_type (&html, "html", 1) == 0 || conf.output_format_idx == 0)
    max = conf.max_items > MAX_CHOICES ? MAX_CHOICES : conf.max_items;

  free (csv);
  free (html);
  free (json);

  return max;
}
