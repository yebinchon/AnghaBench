
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rename_conflict_info {struct rename* ren1; } ;
struct rename {scalar_t__ branch; int dir_rename_original_dest; TYPE_1__* pair; } ;
struct merge_options {scalar_t__ detect_directory_renames; scalar_t__ branch1; TYPE_2__* priv; } ;
struct diff_filespec {char* path; } ;
struct TYPE_4__ {int call_depth; } ;
struct TYPE_3__ {struct diff_filespec* two; } ;


 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ;
 int _ (char*) ;
 int assert (int ) ;
 int free (char*) ;
 int output (struct merge_options*,int,int ,char*,char*) ;
 char* unique_path (struct merge_options*,char*,scalar_t__) ;
 scalar_t__ update_file (struct merge_options*,int,struct diff_filespec const*,char*) ;
 scalar_t__ update_stages (struct merge_options*,char*,int *,struct diff_filespec const*,struct diff_filespec const*) ;
 scalar_t__ would_lose_untracked (struct merge_options*,char*) ;

__attribute__((used)) static int handle_rename_via_dir(struct merge_options *opt,
     struct rename_conflict_info *ci)
{






 const struct rename *ren = ci->ren1;
 const struct diff_filespec *dest = ren->pair->two;
 char *file_path = dest->path;
 int mark_conflicted = (opt->detect_directory_renames ==
          MERGE_DIRECTORY_RENAMES_CONFLICT);
 assert(ren->dir_rename_original_dest);

 if (!opt->priv->call_depth && would_lose_untracked(opt, dest->path)) {
  mark_conflicted = 1;
  file_path = unique_path(opt, dest->path, ren->branch);
  output(opt, 1, _("Error: Refusing to lose untracked file at %s; "
     "writing to %s instead."),
         dest->path, file_path);
 }

 if (mark_conflicted) {





  if (update_file(opt, 0, dest, file_path))
   return -1;
  if (file_path != dest->path)
   free(file_path);
  if (update_stages(opt, dest->path, ((void*)0),
      ren->branch == opt->branch1 ? dest : ((void*)0),
      ren->branch == opt->branch1 ? ((void*)0) : dest))
   return -1;
  return 0;
 } else {

  if (update_file(opt, 1, dest, dest->path))
   return -1;
  return 1;
 }
}
