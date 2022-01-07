
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int GLog ;
typedef int GHolder ;
typedef int FILE ;


 int DATE_TIME ;
 int FATAL (char*,int ) ;
 TYPE_1__ conf ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int generate_time () ;
 int nlines ;
 int now_tm ;
 int print_conn_def (int *) ;
 int print_html_body (int *,char*) ;
 int print_html_footer (int *) ;
 int print_html_header (int *) ;
 int print_json_data (int *,int *,int *) ;
 int print_json_defs (int *) ;
 int set_json_nlines (int) ;
 int * stdout ;
 int strerror (int ) ;
 int strftime (char*,int,char*,int ) ;

void
output_html (GLog * glog, GHolder * holder, const char *filename)
{
  FILE *fp;
  char now[DATE_TIME];

  if (filename != ((void*)0))
    fp = fopen (filename, "w");
  else
    fp = stdout;

  if (!fp)
    FATAL ("Unable to open HTML file: %s.", strerror (errno));


  if (conf.json_pretty_print)
    nlines = 1;
  set_json_nlines (nlines);

  generate_time ();
  strftime (now, DATE_TIME, "%Y-%m-%d %H:%M:%S %z", now_tm);

  print_html_header (fp);

  print_html_body (fp, now);
  print_json_defs (fp);
  print_json_data (fp, glog, holder);
  print_conn_def (fp);

  print_html_footer (fp);

  fclose (fp);
}
