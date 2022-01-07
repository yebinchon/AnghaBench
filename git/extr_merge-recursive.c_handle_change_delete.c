
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_options {char const* branch1; TYPE_2__* repo; TYPE_1__* priv; } ;
struct diff_filespec {int dummy; } ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {scalar_t__ call_depth; } ;


 int _ (char*) ;
 scalar_t__ dir_in_way (int ,char const*,int,int ) ;
 int free (char*) ;
 int output (struct merge_options*,int,int ,char const*,char const*,char const*,char const*,char const*,char const*,char const*,...) ;
 int remove_file_from_index (int ,char const*) ;
 char* unique_path (struct merge_options*,char const*,char const*) ;
 int update_file (struct merge_options*,int ,struct diff_filespec const*,char const*) ;
 scalar_t__ would_lose_untracked (struct merge_options*,char const*) ;

__attribute__((used)) static int handle_change_delete(struct merge_options *opt,
    const char *path, const char *old_path,
    const struct diff_filespec *o,
    const struct diff_filespec *changed,
    const char *change_branch,
    const char *delete_branch,
    const char *change, const char *change_past)
{
 char *alt_path = ((void*)0);
 const char *update_path = path;
 int ret = 0;

 if (dir_in_way(opt->repo->index, path, !opt->priv->call_depth, 0) ||
     (!opt->priv->call_depth && would_lose_untracked(opt, path))) {
  update_path = alt_path = unique_path(opt, path, change_branch);
 }

 if (opt->priv->call_depth) {





  ret = remove_file_from_index(opt->repo->index, path);
  if (!ret)
   ret = update_file(opt, 0, o, update_path);
 } else {
  if (!alt_path) {
   if (!old_path) {
    output(opt, 1, _("CONFLICT (%s/delete): %s deleted in %s "
           "and %s in %s. Version %s of %s left in tree."),
           change, path, delete_branch, change_past,
           change_branch, change_branch, path);
   } else {
    output(opt, 1, _("CONFLICT (%s/delete): %s deleted in %s "
           "and %s to %s in %s. Version %s of %s left in tree."),
           change, old_path, delete_branch, change_past, path,
           change_branch, change_branch, path);
   }
  } else {
   if (!old_path) {
    output(opt, 1, _("CONFLICT (%s/delete): %s deleted in %s "
           "and %s in %s. Version %s of %s left in tree at %s."),
           change, path, delete_branch, change_past,
           change_branch, change_branch, path, alt_path);
   } else {
    output(opt, 1, _("CONFLICT (%s/delete): %s deleted in %s "
           "and %s to %s in %s. Version %s of %s left in tree at %s."),
           change, old_path, delete_branch, change_past, path,
           change_branch, change_branch, path, alt_path);
   }
  }






  if (change_branch != opt->branch1 || alt_path)
   ret = update_file(opt, 0, changed, update_path);
 }
 free(alt_path);

 return ret;
}
