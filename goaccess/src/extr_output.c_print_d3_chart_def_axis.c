
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* def; } ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ GChartDef ;
typedef TYPE_2__ GChart ;
typedef int FILE ;


 int fpskeyaval (int *,int ,int ,int,int) ;
 int fpskeysval (int *,int ,int ,int,int) ;
 int * strchr (int ,char) ;

__attribute__((used)) static void
print_d3_chart_def_axis (FILE * fp, GChart * chart, size_t cnt, int isp)
{
  GChartDef *def = chart->def;
  size_t j = 0;

  for (j = 0; j < cnt; ++j) {
    if (strchr (def[j].value, '[') != ((void*)0))
      fpskeyaval (fp, def[j].key, def[j].value, isp, j == cnt - 1);
    else
      fpskeysval (fp, def[j].key, def[j].value, isp, j == cnt - 1);
  }
}
