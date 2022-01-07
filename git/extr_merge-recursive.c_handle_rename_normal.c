
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rename_conflict_info {struct rename* ren1; } ;
struct rename {scalar_t__ branch; scalar_t__ dir_rename_original_dest; } ;
struct merge_options {scalar_t__ branch1; scalar_t__ detect_directory_renames; } ;
struct merge_file_info {int blob; } ;
struct diff_filespec {int dummy; } ;


 scalar_t__ MERGE_DIRECTORY_RENAMES_CONFLICT ;
 int handle_content_merge (struct merge_file_info*,struct merge_options*,char const*,int ,struct diff_filespec const*,struct diff_filespec const*,struct diff_filespec const*,struct rename_conflict_info*) ;
 scalar_t__ update_stages (struct merge_options*,char const*,int *,int *,int *) ;
 int was_dirty (struct merge_options*,char const*) ;

__attribute__((used)) static int handle_rename_normal(struct merge_options *opt,
    const char *path,
    const struct diff_filespec *o,
    const struct diff_filespec *a,
    const struct diff_filespec *b,
    struct rename_conflict_info *ci)
{
 struct rename *ren = ci->ren1;
 struct merge_file_info mfi;
 int clean;
 int side = (ren->branch == opt->branch1 ? 2 : 3);


 clean = handle_content_merge(&mfi, opt, path, was_dirty(opt, path),
         o, a, b, ci);

 if (clean &&
     opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_CONFLICT &&
     ren->dir_rename_original_dest) {
  if (update_stages(opt, path,
      ((void*)0),
      side == 2 ? &mfi.blob : ((void*)0),
      side == 2 ? ((void*)0) : &mfi.blob))
   return -1;
  clean = 0;
 }
 return clean;
}
