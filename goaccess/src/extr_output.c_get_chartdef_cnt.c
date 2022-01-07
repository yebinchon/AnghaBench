
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * def; } ;
typedef int GChartDef ;
typedef TYPE_1__ GChart ;


 int ChartDefStopper ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
get_chartdef_cnt (GChart * chart)
{
  GChartDef *def = chart->def;

  while (memcmp (def, &ChartDefStopper, sizeof ChartDefStopper))
    ++def;

  return def - chart->def;
}
