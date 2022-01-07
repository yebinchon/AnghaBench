
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_buf ;


 int git_buf_printf (int *,char const*,char const*,char const*) ;
 scalar_t__ git_oid_is_zero (int *) ;

__attribute__((used)) static int diff_delta_format_with_paths(
 git_buf *out,
 const git_diff_delta *delta,
 const char *template,
 const char *oldpath,
 const char *newpath)
{
 if (git_oid_is_zero(&delta->old_file.id))
  oldpath = "/dev/null";

 if (git_oid_is_zero(&delta->new_file.id))
  newpath = "/dev/null";

 return git_buf_printf(out, template, oldpath, newpath);
}
