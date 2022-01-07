
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int FILE ;


 TYPE_1__ conf ;
 int fpclose_obj (int *,int,int) ;
 int fpopen_obj_attr (int *,char*,int) ;
 int print_def_overall_bandwidth (int *,int) ;
 int print_def_overall_excluded (int *,int) ;
 int print_def_overall_files (int *,int) ;
 int print_def_overall_invalid_reqs (int *,int) ;
 int print_def_overall_log_size (int *,int) ;
 int print_def_overall_notfound (int *,int) ;
 int print_def_overall_processed_time (int *,int) ;
 int print_def_overall_refs (int *,int) ;
 int print_def_overall_requests (int *,int) ;
 int print_def_overall_static_files (int *,int) ;
 int print_def_overall_valid_reqs (int *,int) ;
 int print_def_overall_visitors (int *,int) ;

__attribute__((used)) static void
print_def_summary (FILE * fp, int sp)
{
  int isp = 0, iisp = 0;

  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2;


  fpopen_obj_attr (fp, "items", isp);

  print_def_overall_requests (fp, iisp);
  print_def_overall_valid_reqs (fp, iisp);
  print_def_overall_invalid_reqs (fp, iisp);
  print_def_overall_processed_time (fp, iisp);
  print_def_overall_visitors (fp, iisp);
  print_def_overall_files (fp, iisp);
  print_def_overall_excluded (fp, iisp);
  print_def_overall_refs (fp, iisp);
  print_def_overall_notfound (fp, iisp);
  print_def_overall_static_files (fp, iisp);
  print_def_overall_log_size (fp, iisp);
  print_def_overall_bandwidth (fp, iisp);


  fpclose_obj (fp, isp, 1);
}
