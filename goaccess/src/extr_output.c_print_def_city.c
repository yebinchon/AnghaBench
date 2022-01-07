
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int has_geocity; } ;
struct TYPE_4__ {char* datakey; char* datatype; int lbl; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int MTRC_CITY_LBL ;
 TYPE_3__ conf ;
 int print_def_block (int *,TYPE_1__,int,int ) ;

__attribute__((used)) static void
print_def_city (FILE * fp, int sp)
{
  GDefMetric def = {
    .datakey = "city",
    .lbl = MTRC_CITY_LBL,
    .datatype = "string",
  };

  if (!conf.has_geocity)
    return;

  print_def_block (fp, def, sp, 0);
}
