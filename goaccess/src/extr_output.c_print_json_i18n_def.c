
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int FILE ;


 size_t ARRAY_SIZE (char const***) ;
 int _ (char const*) ;
 TYPE_1__ conf ;
 int fpclose_obj (int *,int ,int) ;
 int fpopen_obj (int *,int ) ;
 int fpskeysval (int *,char const*,int ,int,int ) ;

__attribute__((used)) static void
print_json_i18n_def (FILE * fp)
{
  int sp = 0;
  size_t i = 0;


  static const char *json_i18n[][2] = {
    {"theme" , 142} ,
    {"dark_gray" , 152} ,
    {"bright" , 154} ,
    {"dark_blue" , 153} ,
    {"dark_purple" , 151} ,
    {"panels" , 144} ,
    {"items_per_page" , 146} ,
    {"tables" , 143} ,
    {"display_tables" , 150} ,
    {"ah_small" , 156} ,
    {"ah_small_title" , 155} ,
    {"layout" , 145} ,
    {"horizontal" , 147} ,
    {"vertical" , 141} ,
    {"file_opts" , 148} ,
    {"export_json" , 149} ,
    {"panel_opts" , 133} ,
    {"previous" , 131} ,
    {"next" , 134} ,
    {"first" , 136} ,
    {"last" , 135} ,
    {"chart_opts" , 137} ,
    {"chart" , 138} ,
    {"type" , 129} ,
    {"area_spline" , 140} ,
    {"bar" , 139} ,
    {"plot_metric" , 132} ,
    {"table_columns" , 130} ,
    {"thead" , 128} ,
    {"version" , 157} ,
  };



  if (conf.json_pretty_print)
    sp = 1;

  fpopen_obj (fp, 0);
  for (i = 0; i < ARRAY_SIZE (json_i18n); ++i) {
    fpskeysval (fp, json_i18n[i][0], _(json_i18n[i][1]), sp, 0);
  }
  fpclose_obj (fp, 0, 1);
}
