
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int FILE ;


 int GENER_ID ;
 int T_HEAD ;
 int _ (int ) ;
 TYPE_1__ conf ;
 int fpclose_obj (int *,int,int ) ;
 int fpopen_obj_attr (int *,int ,int) ;
 int print_def_meta (int *,int ,char*,int) ;
 int print_def_summary (int *,int) ;

__attribute__((used)) static void
print_json_def_summary (FILE * fp)
{
  int sp = 0;


  if (conf.json_pretty_print)
    sp = 1;


  fpopen_obj_attr (fp, GENER_ID, sp);
  print_def_meta (fp, _(T_HEAD), "", sp);
  print_def_summary (fp, sp);

  fpclose_obj (fp, sp, 0);
}
