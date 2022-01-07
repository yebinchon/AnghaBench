
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stage_data {int processed; struct rename_conflict_info* rename_conflict_info; struct diff_filespec* stages; } ;
struct rename_conflict_info {int rename_type; TYPE_6__* ren2; TYPE_6__* ren1; } ;
struct merge_options {int renormalize; scalar_t__ branch1; char* branch2; TYPE_2__* repo; TYPE_1__* priv; } ;
struct merge_file_info {int dummy; } ;
struct diff_filespec {char* path; int mode; } ;
struct TYPE_12__ {scalar_t__ branch; TYPE_5__* pair; } ;
struct TYPE_11__ {TYPE_4__* two; TYPE_3__* one; } ;
struct TYPE_10__ {char* path; } ;
struct TYPE_9__ {char* path; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {scalar_t__ call_depth; } ;


 int BUG (char*) ;







 int S_ISGITLINK (int ) ;
 char* _ (char*) ;
 int assert (int) ;
 scalar_t__ blob_unchanged (struct merge_options*,struct diff_filespec*,struct diff_filespec*,int,char const*) ;
 scalar_t__ dir_in_way (int ,char const*,int,int ) ;
 int free (char*) ;
 int handle_content_merge (struct merge_file_info*,struct merge_options*,char const*,int,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,int *) ;
 int handle_file_collision (struct merge_options*,char const*,int *,int *,char*,char*,struct diff_filespec*,struct diff_filespec*) ;
 scalar_t__ handle_modify_delete (struct merge_options*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*) ;
 int handle_rename_add (struct merge_options*,struct rename_conflict_info*) ;
 int handle_rename_delete (struct merge_options*,struct rename_conflict_info*) ;
 int handle_rename_normal (struct merge_options*,char const*,struct diff_filespec*,struct diff_filespec*,struct diff_filespec*,struct rename_conflict_info*) ;
 int handle_rename_rename_1to2 (struct merge_options*,struct rename_conflict_info*) ;
 int handle_rename_rename_2to1 (struct merge_options*,struct rename_conflict_info*) ;
 int handle_rename_via_dir (struct merge_options*,struct rename_conflict_info*) ;
 int is_valid (struct diff_filespec*) ;
 int output (struct merge_options*,int,char*,char const*,...) ;
 int remove_file (struct merge_options*,int,char const*,int) ;
 int remove_file_from_index (int ,char const*) ;
 char* unique_path (struct merge_options*,char const*,char const*) ;
 scalar_t__ update_file (struct merge_options*,int ,struct diff_filespec const*,char*) ;
 scalar_t__ update_file_flags (struct merge_options*,struct diff_filespec const*,char const*,int,int) ;
 int warn_about_dir_renamed_entries (struct merge_options*,TYPE_6__*) ;

__attribute__((used)) static int process_entry(struct merge_options *opt,
    const char *path, struct stage_data *entry)
{
 int clean_merge = 1;
 int normalize = opt->renormalize;

 struct diff_filespec *o = &entry->stages[1];
 struct diff_filespec *a = &entry->stages[2];
 struct diff_filespec *b = &entry->stages[3];
 int o_valid = is_valid(o);
 int a_valid = is_valid(a);
 int b_valid = is_valid(b);
 o->path = a->path = b->path = (char*)path;

 entry->processed = 1;
 if (entry->rename_conflict_info) {
  struct rename_conflict_info *ci = entry->rename_conflict_info;
  struct diff_filespec *temp;
  int path_clean;

  path_clean = warn_about_dir_renamed_entries(opt, ci->ren1);
  path_clean &= warn_about_dir_renamed_entries(opt, ci->ren2);







  temp = (opt->branch1 == ci->ren1->branch) ? b : a;
  o->path = temp->path = ci->ren1->pair->one->path;
  if (ci->ren2) {
   assert(opt->branch1 == ci->ren1->branch);
  }

  switch (ci->rename_type) {
  case 132:
  case 131:
   clean_merge = handle_rename_normal(opt, path, o, a, b,
          ci);
   break;
  case 128:
   clean_merge = handle_rename_via_dir(opt, ci);
   break;
  case 134:






   clean_merge = handle_rename_add(opt, ci);
   break;
  case 133:
   clean_merge = 0;
   if (handle_rename_delete(opt, ci))
    clean_merge = -1;
   break;
  case 130:




   o->path = ci->ren1->pair->one->path;
   a->path = ci->ren1->pair->two->path;
   b->path = ci->ren2->pair->two->path;

   clean_merge = 0;
   if (handle_rename_rename_1to2(opt, ci))
    clean_merge = -1;
   break;
  case 129:




   o->path = ((void*)0);
   a->path = ci->ren1->pair->two->path;
   b->path = ci->ren2->pair->two->path;







   clean_merge = handle_rename_rename_2to1(opt, ci);
   break;
  default:
   entry->processed = 0;
   break;
  }
  if (path_clean < clean_merge)
   clean_merge = path_clean;
 } else if (o_valid && (!a_valid || !b_valid)) {

  if ((!a_valid && !b_valid) ||
      (!b_valid && blob_unchanged(opt, o, a, normalize, path)) ||
      (!a_valid && blob_unchanged(opt, o, b, normalize, path))) {


   if (a_valid)
    output(opt, 2, _("Removing %s"), path);

   remove_file(opt, 1, path, !a_valid);
  } else {

   clean_merge = 0;
   if (handle_modify_delete(opt, path, o, a, b))
    clean_merge = -1;
  }
 } else if ((!o_valid && a_valid && !b_valid) ||
     (!o_valid && !a_valid && b_valid)) {



  const char *add_branch;
  const char *other_branch;
  const char *conf;
  const struct diff_filespec *contents;

  if (a_valid) {
   add_branch = opt->branch1;
   other_branch = opt->branch2;
   contents = a;
   conf = _("file/directory");
  } else {
   add_branch = opt->branch2;
   other_branch = opt->branch1;
   contents = b;
   conf = _("directory/file");
  }
  if (dir_in_way(opt->repo->index, path,
          !opt->priv->call_depth && !S_ISGITLINK(a->mode),
          0)) {
   char *new_path = unique_path(opt, path, add_branch);
   clean_merge = 0;
   output(opt, 1, _("CONFLICT (%s): There is a directory with name %s in %s. "
          "Adding %s as %s"),
          conf, path, other_branch, path, new_path);
   if (update_file(opt, 0, contents, new_path))
    clean_merge = -1;
   else if (opt->priv->call_depth)
    remove_file_from_index(opt->repo->index, path);
   free(new_path);
  } else {
   output(opt, 2, _("Adding %s"), path);

   if (update_file_flags(opt, contents, path, 1, !a_valid))
    clean_merge = -1;
  }
 } else if (a_valid && b_valid) {
  if (!o_valid) {

   output(opt, 1,
          _("CONFLICT (add/add): Merge conflict in %s"),
          path);
   clean_merge = handle_file_collision(opt,
           path, ((void*)0), ((void*)0),
           opt->branch1,
           opt->branch2,
           a, b);
  } else {

   struct merge_file_info mfi;
   int is_dirty = 0;
   clean_merge = handle_content_merge(&mfi, opt, path,
          is_dirty,
          o, a, b, ((void*)0));
  }
 } else if (!o_valid && !a_valid && !b_valid) {




  remove_file(opt, 1, path, !a->mode);
 } else
  BUG("fatal merge failure, shouldn't happen.");

 return clean_merge;
}
