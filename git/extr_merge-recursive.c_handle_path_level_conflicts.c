
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {int dummy; } ;
struct strbuf {int buf; } ;
struct merge_options {int repo; } ;
struct hashmap {int dummy; } ;
struct dir_rename_entry {int dir; int non_unique_new_dir; } ;
struct TYPE_2__ {int nr; } ;
struct collision_entry {int reported_already; TYPE_1__ source_files; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 char* apply_dir_rename (struct dir_rename_entry*,char const*) ;
 struct collision_entry* collision_find_entry (struct hashmap*,char*) ;
 int free (char*) ;
 int output (struct merge_options*,int,int ,char const*,int ) ;
 int strbuf_add_separated_string_list (struct strbuf*,char*,TYPE_1__*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ tree_has_path (int ,struct tree*,char*) ;

__attribute__((used)) static char *handle_path_level_conflicts(struct merge_options *opt,
      const char *path,
      struct dir_rename_entry *entry,
      struct hashmap *collisions,
      struct tree *tree)
{
 char *new_path = ((void*)0);
 struct collision_entry *collision_ent;
 int clean = 1;
 struct strbuf collision_paths = STRBUF_INIT;





 new_path = apply_dir_rename(entry, path);

 if (!new_path) {

  if (!entry->non_unique_new_dir)
   BUG("entry->non_unqiue_dir not set and !new_path");
  output(opt, 1, _("CONFLICT (directory rename split): "
          "Unclear where to place %s because directory "
          "%s was renamed to multiple other directories, "
          "with no destination getting a majority of the "
          "files."),
         path, entry->dir);
  clean = 0;
  return ((void*)0);
 }






 collision_ent = collision_find_entry(collisions, new_path);
 if (collision_ent == ((void*)0))
  BUG("collision_ent is NULL");
 if (collision_ent->reported_already) {
  clean = 0;
 } else if (tree_has_path(opt->repo, tree, new_path)) {
  collision_ent->reported_already = 1;
  strbuf_add_separated_string_list(&collision_paths, ", ",
       &collision_ent->source_files);
  output(opt, 1, _("CONFLICT (implicit dir rename): Existing "
          "file/dir at %s in the way of implicit "
          "directory rename(s) putting the following "
          "path(s) there: %s."),
         new_path, collision_paths.buf);
  clean = 0;
 } else if (collision_ent->source_files.nr > 1) {
  collision_ent->reported_already = 1;
  strbuf_add_separated_string_list(&collision_paths, ", ",
       &collision_ent->source_files);
  output(opt, 1, _("CONFLICT (implicit dir rename): Cannot map "
          "more than one path to %s; implicit directory "
          "renames tried to put these paths there: %s"),
         new_path, collision_paths.buf);
  clean = 0;
 }


 strbuf_release(&collision_paths);
 if (!clean && new_path) {
  free(new_path);
  return ((void*)0);
 }

 return new_path;
}
