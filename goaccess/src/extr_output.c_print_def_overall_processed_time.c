
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* datatype; char* cname; int lbl; } ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int OVERALL_GENTIME ;
 int T_GEN_TIME ;
 int fpclose_obj (int *,int,int ) ;
 int fpopen_obj_attr (int *,int ,int) ;
 int print_def_metric (int *,TYPE_1__,int) ;

__attribute__((used)) static void
print_def_overall_processed_time (FILE * fp, int sp)
{
  GDefMetric def = {
    .lbl = T_GEN_TIME,
    .datatype = "secs",
    .cname = "gray"
  };
  fpopen_obj_attr (fp, OVERALL_GENTIME, sp);
  print_def_metric (fp, def, sp);
  fpclose_obj (fp, sp, 0);
}
