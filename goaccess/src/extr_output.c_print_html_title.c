
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* html_report_title; } ;
typedef int FILE ;


 char* HTML_REPORT_TITLE ;
 int clean_output (int *,char*) ;
 TYPE_1__ conf ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void
print_html_title (FILE * fp)
{
  const char *title =
    conf.html_report_title ? conf.html_report_title : HTML_REPORT_TITLE;

  fprintf (fp, "<title>");
  clean_output (fp, (char *) title);
  fprintf (fp, "</title>");
}
