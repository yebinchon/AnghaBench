
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rename {char dir_rename_original_type; int dir_rename_original_dest; } ;
struct merge_options {scalar_t__ detect_directory_renames; } ;


 int BUG (char*) ;
 scalar_t__ MERGE_DIRECTORY_RENAMES_NONE ;
 scalar_t__ MERGE_DIRECTORY_RENAMES_TRUE ;
 char* _ (char*) ;
 int assert (int) ;
 int dir_rename_warning (char const*,int,int,struct merge_options*,struct rename*) ;

__attribute__((used)) static int warn_about_dir_renamed_entries(struct merge_options *opt,
       struct rename *ren)
{
 const char *msg;
 int clean = 1, is_add;

 if (!ren)
  return clean;


 if (!ren->dir_rename_original_dest)
  return clean;


 assert(opt->detect_directory_renames > MERGE_DIRECTORY_RENAMES_NONE);
 assert(ren->dir_rename_original_type == 'A' ||
        ren->dir_rename_original_type == 'R');


 clean = (opt->detect_directory_renames == MERGE_DIRECTORY_RENAMES_TRUE);

 is_add = (ren->dir_rename_original_type == 'A');
 if (ren->dir_rename_original_type == 'A' && clean) {
  msg = _("Path updated: %s added in %s inside a "
   "directory that was renamed in %s; moving it to %s.");
 } else if (ren->dir_rename_original_type == 'A' && !clean) {
  msg = _("CONFLICT (file location): %s added in %s "
   "inside a directory that was renamed in %s, "
   "suggesting it should perhaps be moved to %s.");
 } else if (ren->dir_rename_original_type == 'R' && clean) {
  msg = _("Path updated: %s renamed to %s in %s, inside a "
   "directory that was renamed in %s; moving it to %s.");
 } else if (ren->dir_rename_original_type == 'R' && !clean) {
  msg = _("CONFLICT (file location): %s renamed to %s in %s, "
   "inside a directory that was renamed in %s, "
   "suggesting it should perhaps be moved to %s.");
 } else {
  BUG("Impossible dir_rename_original_type/clean combination");
 }
 dir_rename_warning(msg, is_add, clean, opt, ren);

 return clean;
}
