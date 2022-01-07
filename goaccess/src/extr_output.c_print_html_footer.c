
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* html_custom_js; } ;
typedef int FILE ;


 char* app_js ;
 char* charts_js ;
 TYPE_1__ conf ;
 char* d3_js ;
 int fprintf (int *,char*,...) ;
 char* hogan_js ;

__attribute__((used)) static void
print_html_footer (FILE * fp)
{
  fprintf (fp, "<script>%s</script>", d3_js);
  fprintf (fp, "<script>%s</script>", hogan_js);
  fprintf (fp, "<script>%s</script>", app_js);
  fprintf (fp, "<script>%s</script>", charts_js);


  if (conf.html_custom_js)
    fprintf (fp, "<script src='%s'></script>", conf.html_custom_js);

  fprintf (fp, "</body>");
  fprintf (fp, "</html>");
}
