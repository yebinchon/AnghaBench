
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int append_method; } ;
struct TYPE_4__ {char* datakey; char* datatype; char* cwidth; int lbl; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int MTRC_METHODS_LBL ;
 TYPE_3__ conf ;
 int print_def_block (int *,TYPE_1__,int,int ) ;

__attribute__((used)) static void
print_def_method (FILE * fp, int sp)
{
  GDefMetric def = {
    .datakey = "method",
    .lbl = MTRC_METHODS_LBL,
    .datatype = "string",
    .cwidth = "6%",
  };

  if (!conf.append_method)
    return;

  print_def_block (fp, def, sp, 0);
}
