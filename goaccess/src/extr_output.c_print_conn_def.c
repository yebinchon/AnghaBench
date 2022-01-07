
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ws_url; scalar_t__ port; int real_time_html; scalar_t__ json_pretty_print; } ;
typedef int FILE ;


 int atoi (scalar_t__) ;
 TYPE_1__ conf ;
 int fpclose_obj (int *,int,int) ;
 int fpopen_obj (int *,int) ;
 int fprintf (int *,char*) ;
 int fpskeyival (int *,char*,int,int,int) ;
 int fpskeysval (int *,char*,char*,int,int ) ;

__attribute__((used)) static void
print_conn_def (FILE * fp)
{
  int sp = 0;

  if (conf.json_pretty_print)
    sp += 1;

  if (!conf.real_time_html)
    return;

  fprintf (fp, "<script type='text/javascript'>");
  fprintf (fp, "var connection = ");

  fpopen_obj (fp, sp);
  fpskeysval (fp, "url", (conf.ws_url ? conf.ws_url : ""), sp, 0);
  fpskeyival (fp, "port", (conf.port ? atoi (conf.port) : 7890), sp, 1);
  fpclose_obj (fp, sp, 1);

  fprintf (fp, "</script>");
}
