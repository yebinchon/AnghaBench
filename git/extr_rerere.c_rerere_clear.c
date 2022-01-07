
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct rerere_id {int dummy; } ;
struct repository {int dummy; } ;
struct TYPE_2__ {struct rerere_id* util; } ;


 int git_path_merge_rr (struct repository*) ;
 int has_rerere_resolution (struct rerere_id*) ;
 int rerere_path (struct rerere_id*,int *) ;
 int rmdir (int ) ;
 int rollback_lock_file (int *) ;
 scalar_t__ setup_rerere (struct repository*,struct string_list*,int ) ;
 int unlink_or_warn (int ) ;
 int unlink_rr_item (struct rerere_id*) ;
 int write_lock ;

void rerere_clear(struct repository *r, struct string_list *merge_rr)
{
 int i;

 if (setup_rerere(r, merge_rr, 0) < 0)
  return;

 for (i = 0; i < merge_rr->nr; i++) {
  struct rerere_id *id = merge_rr->items[i].util;
  if (!has_rerere_resolution(id)) {
   unlink_rr_item(id);
   rmdir(rerere_path(id, ((void*)0)));
  }
 }
 unlink_or_warn(git_path_merge_rr(r));
 rollback_lock_file(&write_lock);
}
