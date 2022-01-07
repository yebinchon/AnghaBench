
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ json_pretty_print; } ;
struct TYPE_7__ {int (* plot ) (int *,TYPE_2__,int) ;} ;
struct TYPE_6__ {TYPE_2__* chart; } ;
typedef TYPE_1__ GHTML ;
typedef int FILE ;


 TYPE_5__ conf ;
 int count_plot_fp (TYPE_1__ const*) ;
 int fpclose_arr (int *,int,int ) ;
 int fpclose_obj (int *,int,int) ;
 int fpopen_arr_attr (int *,char*,int) ;
 int fpopen_obj (int *,int) ;
 int stub1 (int *,TYPE_2__,int) ;

__attribute__((used)) static void
print_def_plot (FILE * fp, const GHTML * def, int sp)
{
  int i, isp = 0, n = count_plot_fp (def);

  if (conf.json_pretty_print)
    isp = sp + 1;

  fpopen_arr_attr (fp, "plot", sp);

  for (i = 0; i < n; ++i) {
    fpopen_obj (fp, isp);
    def->chart[i].plot (fp, def->chart[i], isp);
    fpclose_obj (fp, isp, (i == n - 1));
  }

  fpclose_arr (fp, sp, 0);
}
