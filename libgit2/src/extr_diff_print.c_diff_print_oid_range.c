
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id_abbrev; int mode; int id; } ;
struct TYPE_6__ {int id_abbrev; int mode; int id; } ;
struct TYPE_8__ {TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef TYPE_3__ git_diff_delta ;
typedef int git_buf ;


 int GIT_ERROR_PATCH ;
 int GIT_OID_HEXSZ ;
 int diff_print_modes (int *,TYPE_3__ const*) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,char*,...) ;
 int git_error_set (int ,char*,int,int) ;
 int git_oid_tostr (char*,int,int *) ;

__attribute__((used)) static int diff_print_oid_range(
 git_buf *out, const git_diff_delta *delta, int id_strlen)
{
 char start_oid[GIT_OID_HEXSZ+1], end_oid[GIT_OID_HEXSZ+1];

 if (delta->old_file.mode &&
   id_strlen > delta->old_file.id_abbrev) {
  git_error_set(GIT_ERROR_PATCH,
   "the patch input contains %d id characters (cannot print %d)",
   delta->old_file.id_abbrev, id_strlen);
  return -1;
 }

 if ((delta->new_file.mode &&
   id_strlen > delta->new_file.id_abbrev)) {
  git_error_set(GIT_ERROR_PATCH,
   "the patch input contains %d id characters (cannot print %d)",
   delta->new_file.id_abbrev, id_strlen);
  return -1;
 }

 git_oid_tostr(start_oid, id_strlen + 1, &delta->old_file.id);
 git_oid_tostr(end_oid, id_strlen + 1, &delta->new_file.id);

 if (delta->old_file.mode == delta->new_file.mode) {
  git_buf_printf(out, "index %s..%s %o\n",
   start_oid, end_oid, delta->old_file.mode);
 } else {
  if (delta->old_file.mode == 0)
   git_buf_printf(out, "new file mode %o\n", delta->new_file.mode);
  else if (delta->new_file.mode == 0)
   git_buf_printf(out, "deleted file mode %o\n", delta->old_file.mode);
  else
   diff_print_modes(out, delta);

  git_buf_printf(out, "index %s..%s\n", start_oid, end_oid);
 }

 return git_buf_oom(out) ? -1 : 0;
}
