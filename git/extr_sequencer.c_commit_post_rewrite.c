
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_rewrite_cfg {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int copy_note_for_rewrite (struct notes_rewrite_cfg*,int *,struct object_id const*) ;
 int finish_copy_notes_for_rewrite (struct repository*,struct notes_rewrite_cfg*,char*) ;
 struct notes_rewrite_cfg* init_copy_notes_for_rewrite (char*) ;
 int run_rewrite_hook (int *,struct object_id const*) ;

void commit_post_rewrite(struct repository *r,
    const struct commit *old_head,
    const struct object_id *new_head)
{
 struct notes_rewrite_cfg *cfg;

 cfg = init_copy_notes_for_rewrite("amend");
 if (cfg) {

  copy_note_for_rewrite(cfg, &old_head->object.oid, new_head);
  finish_copy_notes_for_rewrite(r, cfg, "Notes added by 'git commit --amend'");
 }
 run_rewrite_hook(&old_head->object.oid, new_head);
}
