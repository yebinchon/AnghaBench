
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct GPanel_ {int dummy; } ;
struct TYPE_7__ {scalar_t__ json_pretty_print; } ;
struct TYPE_6__ {int module; } ;
typedef int GPercTotals ;
typedef int GJSON ;
typedef TYPE_1__ GHolder ;


 TYPE_5__ conf ;
 int module_to_id (int ) ;
 int pclose_obj (int *,int,int) ;
 int popen_obj_attr (int *,int ,int) ;
 int print_data_metrics (int *,TYPE_1__*,int ,int,struct GPanel_ const*) ;
 int print_meta_data (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
print_json_data (GJSON * json, GHolder * h, GPercTotals totals,
                 const struct GPanel_ *panel)
{
  int sp = 0;

  if (conf.json_pretty_print)
    sp = 1;


  popen_obj_attr (json, module_to_id (h->module), sp);

  print_meta_data (json, h, sp);

  print_data_metrics (json, h, totals, sp, panel);

  pclose_obj (json, sp, 1);
}
