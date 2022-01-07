
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* datatype; char* cname; int lbl; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int OVERALL_VISITORS ;
 int T_UNIQUE_VISITORS ;
 int fpclose_obj (int *,int,int ) ;
 int fpopen_obj_attr (int *,int ,int) ;
 int print_def_metric (int *,TYPE_1__,int) ;

__attribute__((used)) static void
print_def_overall_visitors (FILE * fp, int sp)
{
  GDefMetric def = {
    .lbl = T_UNIQUE_VISITORS,
    .datatype = "numeric",
    .cname = "blue"
  };
  fpopen_obj_attr (fp, OVERALL_VISITORS, sp);
  print_def_metric (fp, def, sp);
  fpclose_obj (fp, sp, 0);
}
