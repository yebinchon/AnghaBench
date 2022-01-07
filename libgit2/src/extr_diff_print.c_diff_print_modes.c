
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mode; } ;
struct TYPE_5__ {int mode; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_buf ;


 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,int ) ;

__attribute__((used)) static int diff_print_modes(
 git_buf *out, const git_diff_delta *delta)
{
 git_buf_printf(out, "old mode %o\n", delta->old_file.mode);
 git_buf_printf(out, "new mode %o\n", delta->new_file.mode);

 return git_buf_oom(out) ? -1 : 0;
}
