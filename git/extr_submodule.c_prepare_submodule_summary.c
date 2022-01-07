
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {int left_right; int first_parent_only; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_4__ {int oid; int flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {TYPE_2__ object; } ;


 int SYMMETRIC_LEFT ;
 int UNINTERESTING ;
 int add_pending_object (struct rev_info*,TYPE_2__*,char const*) ;
 char const* oid_to_hex (int *) ;
 int prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int the_repository ;

__attribute__((used)) static int prepare_submodule_summary(struct rev_info *rev, const char *path,
  struct commit *left, struct commit *right,
  struct commit_list *merge_bases)
{
 struct commit_list *list;

 repo_init_revisions(the_repository, rev, ((void*)0));
 setup_revisions(0, ((void*)0), rev, ((void*)0));
 rev->left_right = 1;
 rev->first_parent_only = 1;
 left->object.flags |= SYMMETRIC_LEFT;
 add_pending_object(rev, &left->object, path);
 add_pending_object(rev, &right->object, path);
 for (list = merge_bases; list; list = list->next) {
  list->item->object.flags |= UNINTERESTING;
  add_pending_object(rev, &list->item->object,
   oid_to_hex(&list->item->object.oid));
 }
 return prepare_revision_walk(rev);
}
