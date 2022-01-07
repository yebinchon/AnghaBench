
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ output_format_idx; } ;


 TYPE_1__ conf ;
 scalar_t__ find_output_type (char**,char*,int) ;
 int free (char*) ;
 int glog ;
 int holder ;
 int output_csv (int ,int ,char*) ;
 int output_json (int ,int ,char*) ;
 int process_html (char*) ;

__attribute__((used)) static void
standard_output (void)
{
  char *csv = ((void*)0), *json = ((void*)0), *html = ((void*)0);


  if (find_output_type (&csv, "csv", 1) == 0)
    output_csv (glog, holder, csv);

  if (find_output_type (&json, "json", 1) == 0)
    output_json (glog, holder, json);

  if (find_output_type (&html, "html", 1) == 0 || conf.output_format_idx == 0)
    process_html (html);

  free (csv);
  free (html);
  free (json);
}
