
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {char const* branch1; TYPE_1__* priv; } ;
struct diff_filespec {char* path; scalar_t__ mode; int oid; } ;
struct merge_file_info {int clean; struct diff_filespec blob; } ;
struct TYPE_2__ {int call_depth; } ;


 int _ (char*) ;
 int free (char*) ;
 scalar_t__ merge_mode_and_contents (struct merge_options*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,char const*,char const*,char const*,int,struct merge_file_info*) ;
 int null_oid ;
 int oidcpy (int *,int *) ;
 int output (struct merge_options*,int,int ,char const*) ;
 int remove_file (struct merge_options*,int,char const*,int) ;
 char* unique_path (struct merge_options*,char const*,char*) ;
 scalar_t__ update_file (struct merge_options*,int,struct diff_filespec*,char const*) ;
 scalar_t__ update_stages (struct merge_options*,char const*,int *,struct diff_filespec*,struct diff_filespec*) ;
 scalar_t__ was_dirty (struct merge_options*,char const*) ;
 scalar_t__ would_lose_untracked (struct merge_options*,char const*) ;

__attribute__((used)) static int handle_file_collision(struct merge_options *opt,
     const char *collide_path,
     const char *prev_path1,
     const char *prev_path2,
     const char *branch1, const char *branch2,
     struct diff_filespec *a,
     struct diff_filespec *b)
{
 struct merge_file_info mfi;
 struct diff_filespec null;
 char *alt_path = ((void*)0);
 const char *update_path = collide_path;







 if (branch1 != opt->branch1) {
  return handle_file_collision(opt, collide_path,
          prev_path2, prev_path1,
          branch2, branch1,
          b, a);
 }




 if (opt->priv->call_depth && (prev_path1 || prev_path2)) {

  if (prev_path1) {
   if (update_file(opt, 1, a, prev_path1))
    return -1;
  } else {
   if (update_file(opt, 1, a, collide_path))
    return -1;
  }


  if (prev_path2) {
   if (update_file(opt, 1, b, prev_path2))
    return -1;
  } else {
   if (update_file(opt, 1, b, collide_path))
    return -1;
  }


  if (prev_path1 && prev_path2)
   remove_file(opt, 1, collide_path, 0);

  return 0;
 }


 if (prev_path1)
  remove_file(opt, 1, prev_path1,
       opt->priv->call_depth || would_lose_untracked(opt, prev_path1));
 if (prev_path2)
  remove_file(opt, 1, prev_path2,
       opt->priv->call_depth || would_lose_untracked(opt, prev_path2));






 if (was_dirty(opt, collide_path)) {
  output(opt, 1, _("Refusing to lose dirty file at %s"),
         collide_path);
  update_path = alt_path = unique_path(opt, collide_path, "merged");
 } else if (would_lose_untracked(opt, collide_path)) {






  output(opt, 1, _("Refusing to lose untracked file at "
          "%s, even though it's in the way."),
         collide_path);
  update_path = alt_path = unique_path(opt, collide_path, "merged");
 } else {
  remove_file(opt, 0, collide_path, 0);
 }


 null.path = (char *)collide_path;
 oidcpy(&null.oid, &null_oid);
 null.mode = 0;

 if (merge_mode_and_contents(opt, &null, a, b, collide_path,
        branch1, branch2, opt->priv->call_depth * 2, &mfi))
  return -1;
 mfi.clean &= !alt_path;
 if (update_file(opt, mfi.clean, &mfi.blob, update_path))
  return -1;
 if (!mfi.clean && !opt->priv->call_depth &&
     update_stages(opt, collide_path, ((void*)0), a, b))
  return -1;
 free(alt_path);







 return mfi.clean;
}
