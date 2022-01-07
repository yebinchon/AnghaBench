
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int (* metrics ) (int *,TYPE_1__ const*,int) ;} ;
typedef TYPE_1__ GHTML ;
typedef int FILE ;


 TYPE_4__ conf ;
 int fpclose_arr (int *,int,int) ;
 int fpopen_arr_attr (int *,char*,int) ;
 int stub1 (int *,TYPE_1__ const*,int) ;

__attribute__((used)) static void
print_def_metrics (FILE * fp, const GHTML * def, int sp)
{
  int isp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1;


  fpopen_arr_attr (fp, "items", sp);

  def->metrics (fp, def, isp);

  fpclose_arr (fp, sp, 1);
}
