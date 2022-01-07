
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* html_report_title; scalar_t__ no_html_last_updated; } ;
typedef int FILE ;


 char* INFO_LAST_UPDATED ;
 char* T_DASH ;
 TYPE_1__ conf ;
 int fprintf (int *,char*,char*,...) ;
 char* tpls ;

__attribute__((used)) static void
print_html_body (FILE * fp, const char *now)
{
  fprintf (fp,
  "<nav class='hidden-xs hidden-sm hide'>"
  "</nav>"

  "<i class='spinner fa fa-circle-o-notch fa-spin fa-3x fa-fw'></i>"
  "<div class='container hide'>"
  "<div class='wrap-header'>"
  "<div class='row row-offcanvas row-offcanvas-right'>"
  "<div class='col-md-12'>"
  "<div class='page-header clearfix'>"
  "<div class='pull-right'>"
  "<h4>"
  "<span class='label label-info' style='display:%s'>"
  "<span class='hidden-xs'>%s: </span>"
  "<span class='last-updated'>%s</span>"
  "</span>"
  "</h4>"
  "</div>"
  "<h1>"
  "<span class='hidden-xs hidden-sm'>"
  "<i class='fa fa-tachometer'></i> %s"
  "</span>"
  "<span class='visible-xs visible-sm'>"
  "<i class='fa fa-bars nav-minibars'></i>"
  "<i class='fa fa-circle nav-ws-status mini'></i>"
  "</span>"
  "</h1>", conf.no_html_last_updated ? "none" : "block", INFO_LAST_UPDATED, now, T_DASH);

  fprintf (fp,
  "<div class='report-title'>%s</div>"
  "</div>"
  "<div class='wrap-general'></div>"
  "</div>"
  "</div>"
  "</div>"
  "<div class='wrap-panels'></div>"
  "</div>", conf.html_report_title ? conf.html_report_title : "");

  fprintf (fp, "%s", tpls);
}
