
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filenames_idx; scalar_t__ json_pretty_print; } ;
typedef int GJSON ;


 int OVERALL_LOG ;
 TYPE_1__ conf ;
 int pclose_arr (int *,int,int) ;
 int popen_arr_attr (int *,int ,int) ;
 int poverall_log_path (int *,int,int) ;

__attribute__((used)) static void
poverall_log (GJSON * json, int sp)
{
  int idx, isp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1;

  popen_arr_attr (json, OVERALL_LOG, sp);
  for (idx = 0; idx < conf.filenames_idx; ++idx)
    poverall_log_path (json, idx, isp);
  pclose_arr (json, sp, 1);
}
