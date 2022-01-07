
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashmap {int dummy; } ;
struct dir_rename_entry {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {char status; TYPE_1__* two; } ;
struct collision_entry {char* target_file; int source_files; int ent; } ;
struct TYPE_2__ {int path; } ;


 char* apply_dir_rename (struct dir_rename_entry*,int ) ;
 struct dir_rename_entry* check_dir_renamed (int ,struct hashmap*) ;
 struct collision_entry* collision_find_entry (struct hashmap*,char*) ;
 int collision_init (struct hashmap*) ;
 int free (char*) ;
 int hashmap_entry_init (int *,int ) ;
 int hashmap_put (struct hashmap*,int *) ;
 int strhash (char*) ;
 int string_list_insert (int *,int ) ;
 struct collision_entry* xcalloc (int,int) ;

__attribute__((used)) static void compute_collisions(struct hashmap *collisions,
          struct hashmap *dir_renames,
          struct diff_queue_struct *pairs)
{
 int i;
 collision_init(collisions);

 for (i = 0; i < pairs->nr; ++i) {
  struct dir_rename_entry *dir_rename_ent;
  struct collision_entry *collision_ent;
  char *new_path;
  struct diff_filepair *pair = pairs->queue[i];

  if (pair->status != 'A' && pair->status != 'R')
   continue;
  dir_rename_ent = check_dir_renamed(pair->two->path,
         dir_renames);
  if (!dir_rename_ent)
   continue;

  new_path = apply_dir_rename(dir_rename_ent, pair->two->path);
  if (!new_path)






   continue;
  collision_ent = collision_find_entry(collisions, new_path);
  if (!collision_ent) {
   collision_ent = xcalloc(1,
      sizeof(struct collision_entry));
   hashmap_entry_init(&collision_ent->ent,
      strhash(new_path));
   hashmap_put(collisions, &collision_ent->ent);
   collision_ent->target_file = new_path;
  } else {
   free(new_path);
  }
  string_list_insert(&collision_ent->source_files,
       pair->two->path);
 }
}
