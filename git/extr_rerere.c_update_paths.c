
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct repository {int index; } ;
struct lock_file {int dummy; } ;


 int COMMIT_LOCK ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 int SKIP_IF_UNCHANGED ;
 int _ (char*) ;
 scalar_t__ add_file_to_index (int ,int ,int ) ;
 int die (int ) ;
 int exit (int) ;
 int fprintf_ln (int ,int ,int ) ;
 int repo_hold_locked_index (struct repository*,struct lock_file*,int ) ;
 int stderr ;
 scalar_t__ write_locked_index (int ,struct lock_file*,int) ;

__attribute__((used)) static void update_paths(struct repository *r, struct string_list *update)
{
 struct lock_file index_lock = LOCK_INIT;
 int i;

 repo_hold_locked_index(r, &index_lock, LOCK_DIE_ON_ERROR);

 for (i = 0; i < update->nr; i++) {
  struct string_list_item *item = &update->items[i];
  if (add_file_to_index(r->index, item->string, 0))
   exit(128);
  fprintf_ln(stderr, _("Staged '%s' using previous resolution."),
   item->string);
 }

 if (write_locked_index(r->index, &index_lock,
          COMMIT_LOCK | SKIP_IF_UNCHANGED))
  die(_("unable to write new index file"));
}
