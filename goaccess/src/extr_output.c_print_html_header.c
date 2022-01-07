
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* html_custom_css; } ;
typedef int FILE ;


 int DOC_LANG ;
 char* _ (int ) ;
 char* app_css ;
 char* bootstrap_css ;
 TYPE_1__ conf ;
 char* fa_css ;
 int fprintf (int *,char*,...) ;
 int print_html_title (int *) ;

__attribute__((used)) static void
print_html_header (FILE * fp)
{
  fprintf (fp,
  "<!DOCTYPE html>"
  "<html lang='%s'>"
  "<head>"
  "<meta charset='UTF-8'>"
  "<meta name='referrer' content='no-referrer'>"
  "<meta http-equiv='X-UA-Compatible' content='IE=edge'>"
  "<meta name='google' content='notranslate'>"
  "<meta name='viewport' content='width=device-width, initial-scale=1'>"
  "<meta name='robots' content='noindex, nofollow'>", _(DOC_LANG));


  fprintf (fp, "<link rel='icon' href='data:image/x-icon;base64,AAABAAEA"
  "EBAQAAEABAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAgAAAAAAAAAAAAAAAEAAAA"
  "AAAAADGxsYAWFhYABwcHABfAP8A/9dfAADXrwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
  "AAAAAAAAAAAAAAAAAAAAAAIiIiIiIiIiIjMlUkQgAiIiIiIiIiIiIiIzJVJEIAAAIiIiI"
  "iIiIiIiMyVSRCAAIiIiIiIiIiIiIRERERERERERERERERERERIiIiIiIiIiIgACVVUiIi"
  "IiIiIiIiIiIiIAAlVVIiIiIiIiIiIiIiIhEREREREREREREREREREREAAAAAAAAAAAAAA"
  "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
  "AA' type='image/x-icon' />");

  print_html_title (fp);

  fprintf (fp, "<style>%s</style>", fa_css);
  fprintf (fp, "<style>%s</style>", bootstrap_css);
  fprintf (fp, "<style>%s</style>", app_css);

  if (conf.html_custom_css)
    fprintf (fp, "<link rel='stylesheet' href='%s'>", conf.html_custom_css);

  fprintf (fp,
  "</head>"
  "<body>");
}
