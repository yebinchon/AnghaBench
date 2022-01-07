
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ json_pretty_print; } ;
struct TYPE_7__ {int table; int module; } ;
typedef TYPE_1__ GHTML ;
typedef int FILE ;


 TYPE_6__ conf ;
 int fpskeyival (int *,char*,int ,int,int ) ;
 int fpskeysval (int *,char*,char const*,int,int ) ;
 char* module_to_desc (int ) ;
 char* module_to_head (int ) ;
 char* module_to_id (int ) ;
 int print_def_meta (int *,char const*,char const*,int) ;
 int print_def_metrics (int *,TYPE_1__ const*,int) ;
 int print_def_plot (int *,TYPE_1__ const*,int) ;
 int print_def_sort (int *,TYPE_1__ const*,int) ;

__attribute__((used)) static void
print_panel_def_meta (FILE * fp, const GHTML * def, int sp)
{
  const char *desc = module_to_desc (def->module);
  const char *head = module_to_head (def->module);
  const char *id = module_to_id (def->module);

  int isp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1;

  print_def_meta (fp, head, desc, sp);

  fpskeysval (fp, "id", id, isp, 0);
  fpskeyival (fp, "table", def->table, isp, 0);

  print_def_sort (fp, def, isp);
  print_def_plot (fp, def, isp);
  print_def_metrics (fp, def, isp);
}
