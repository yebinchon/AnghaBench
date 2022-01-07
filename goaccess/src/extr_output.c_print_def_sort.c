
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ json_pretty_print; } ;
struct TYPE_7__ {size_t module; } ;
struct TYPE_6__ {int sort; int field; } ;
typedef TYPE_1__ GSort ;
typedef TYPE_2__ GHTML ;
typedef int FILE ;


 TYPE_5__ conf ;
 int fpclose_obj (int *,int,int ) ;
 int fpopen_obj_attr (int *,char*,int) ;
 int fpskeysval (int *,char*,int ,int,int) ;
 int get_sort_field_key (int ) ;
 int get_sort_order_str (int ) ;
 TYPE_1__* module_sort ;

__attribute__((used)) static void
print_def_sort (FILE * fp, const GHTML * def, int sp)
{
  GSort sort = module_sort[def->module];
  int isp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1;


  fpopen_obj_attr (fp, "sort", sp);
  fpskeysval (fp, "field", get_sort_field_key (sort.field), isp, 0);
  fpskeysval (fp, "order", get_sort_order_str (sort.sort), isp, 1);

  fpclose_obj (fp, sp, 0);
}
