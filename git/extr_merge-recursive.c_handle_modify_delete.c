
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merge_options {char* branch1; char* branch2; } ;
struct diff_filespec {int dummy; } ;


 int _ (char*) ;
 int handle_change_delete (struct merge_options*,char const*,int *,struct diff_filespec const*,struct diff_filespec const*,char const*,char const*,int ,int ) ;
 scalar_t__ is_valid (struct diff_filespec const*) ;

__attribute__((used)) static int handle_modify_delete(struct merge_options *opt,
    const char *path,
    const struct diff_filespec *o,
    const struct diff_filespec *a,
    const struct diff_filespec *b)
{
 const char *modify_branch, *delete_branch;
 const struct diff_filespec *changed;

 if (is_valid(a)) {
  modify_branch = opt->branch1;
  delete_branch = opt->branch2;
  changed = a;
 } else {
  modify_branch = opt->branch2;
  delete_branch = opt->branch1;
  changed = b;
 }

 return handle_change_delete(opt,
        path, ((void*)0),
        o, changed,
        modify_branch, delete_branch,
        _("modify"), _("modified"));
}
