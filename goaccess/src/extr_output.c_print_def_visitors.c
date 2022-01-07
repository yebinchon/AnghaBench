
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* datakey; char* datatype; char* metakey; char* cwidth; int lbl; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int MTRC_VISITORS_LBL ;
 int print_def_block (int *,TYPE_1__,int,int ) ;

__attribute__((used)) static void
print_def_visitors (FILE * fp, int sp)
{
  GDefMetric def = {
    .datakey = "visitors",
    .lbl = MTRC_VISITORS_LBL,
    .datatype = "numeric",
    .metakey = "count",
    .cwidth = "12%",
  };
  print_def_block (fp, def, sp, 0);
}
