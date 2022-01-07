
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; int path; } ;
struct TYPE_5__ {scalar_t__ mode; int path; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_buf ;


 int git_buf_printf (int *,char*,scalar_t__,scalar_t__,...) ;

int git_diff_file_stats__summary_to_buf(
 git_buf *out,
 const git_diff_delta *delta)
{
 if (delta->old_file.mode != delta->new_file.mode) {
  if (delta->old_file.mode == 0) {
   git_buf_printf(out, " create mode %06o %s\n",
    delta->new_file.mode, delta->new_file.path);
  }
  else if (delta->new_file.mode == 0) {
   git_buf_printf(out, " delete mode %06o %s\n",
    delta->old_file.mode, delta->old_file.path);
  }
  else {
   git_buf_printf(out, " mode change %06o => %06o %s\n",
    delta->old_file.mode, delta->new_file.mode, delta->new_file.path);
  }
 }

 return 0;
}
