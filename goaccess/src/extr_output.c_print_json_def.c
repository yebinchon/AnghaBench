
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int module; } ;
typedef TYPE_1__ GHTML ;
typedef int FILE ;


 int NL ;
 int TOTAL_MODULES ;
 TYPE_4__ conf ;
 int fpclose_obj (int *,int,int) ;
 int fpjson (int *,char*,int ,int ) ;
 int fpopen_obj_attr (int *,int ,int) ;
 int module_to_id (int) ;
 int nlines ;
 int print_panel_def_meta (int *,TYPE_1__ const*,int) ;

__attribute__((used)) static void
print_json_def (FILE * fp, const GHTML * def)
{
  int sp = 0;

  if (conf.json_pretty_print)
    sp = 1;


  fpopen_obj_attr (fp, module_to_id (def->module), sp);

  print_panel_def_meta (fp, def, sp);

  fpclose_obj (fp, sp, 1);

  fpjson (fp, (def->module != TOTAL_MODULES - 1) ? ",%.*s" : "%.*s", nlines,
          NL);
}
