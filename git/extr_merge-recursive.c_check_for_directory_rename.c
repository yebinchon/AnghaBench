
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct merge_options {int dummy; } ;
struct hashmap {int dummy; } ;
struct TYPE_2__ {int buf; } ;
struct dir_rename_entry {TYPE_1__ new_dir; int dir; } ;


 int _ (char*) ;
 struct dir_rename_entry* check_dir_renamed (char const*,struct hashmap*) ;
 struct dir_rename_entry* dir_rename_find_entry (struct hashmap*,int ) ;
 char* handle_path_level_conflicts (struct merge_options*,char const*,struct dir_rename_entry*,struct hashmap*,struct tree*) ;
 int output (struct merge_options*,int,int ,int ,int ,char const*,int ) ;

__attribute__((used)) static char *check_for_directory_rename(struct merge_options *opt,
     const char *path,
     struct tree *tree,
     struct hashmap *dir_renames,
     struct hashmap *dir_rename_exclusions,
     struct hashmap *collisions,
     int *clean_merge)
{
 char *new_path = ((void*)0);
 struct dir_rename_entry *entry = check_dir_renamed(path, dir_renames);
 struct dir_rename_entry *oentry = ((void*)0);

 if (!entry)
  return new_path;
 oentry = dir_rename_find_entry(dir_rename_exclusions, entry->new_dir.buf);
 if (oentry) {
  output(opt, 1, _("WARNING: Avoiding applying %s -> %s rename "
          "to %s, because %s itself was renamed."),
         entry->dir, entry->new_dir.buf, path, entry->new_dir.buf);
 } else {
  new_path = handle_path_level_conflicts(opt, path, entry,
             collisions, tree);
  *clean_merge &= (new_path != ((void*)0));
 }

 return new_path;
}
