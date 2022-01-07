
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pathspec; } ;
struct rev_info {scalar_t__ cherry_mark; TYPE_2__ diffopt; int repo; } ;
struct TYPE_6__ {int pathspec; } ;
struct patch_ids {TYPE_1__ diffopts; } ;
struct patch_id {TYPE_5__* commit; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_8__ {unsigned int flags; } ;
struct commit {TYPE_3__ object; } ;
struct TYPE_9__ {unsigned int flags; } ;
struct TYPE_10__ {TYPE_4__ object; } ;


 unsigned int BOUNDARY ;
 unsigned int PATCHSAME ;
 unsigned int SHOWN ;
 unsigned int SYMMETRIC_LEFT ;
 int add_commit_patch_id (struct commit*,struct patch_ids*) ;
 int free_patch_ids (struct patch_ids*) ;
 struct patch_id* has_commit_patch_id (struct commit*,struct patch_ids*) ;
 int init_patch_ids (int ,struct patch_ids*) ;

__attribute__((used)) static void cherry_pick_list(struct commit_list *list, struct rev_info *revs)
{
 struct commit_list *p;
 int left_count = 0, right_count = 0;
 int left_first;
 struct patch_ids ids;
 unsigned cherry_flag;


 for (p = list; p; p = p->next) {
  struct commit *commit = p->item;
  unsigned flags = commit->object.flags;
  if (flags & BOUNDARY)
   ;
  else if (flags & SYMMETRIC_LEFT)
   left_count++;
  else
   right_count++;
 }

 if (!left_count || !right_count)
  return;

 left_first = left_count < right_count;
 init_patch_ids(revs->repo, &ids);
 ids.diffopts.pathspec = revs->diffopt.pathspec;


 for (p = list; p; p = p->next) {
  struct commit *commit = p->item;
  unsigned flags = commit->object.flags;

  if (flags & BOUNDARY)
   continue;





  if (left_first != !!(flags & SYMMETRIC_LEFT))
   continue;
  add_commit_patch_id(commit, &ids);
 }


 cherry_flag = revs->cherry_mark ? PATCHSAME : SHOWN;


 for (p = list; p; p = p->next) {
  struct commit *commit = p->item;
  struct patch_id *id;
  unsigned flags = commit->object.flags;

  if (flags & BOUNDARY)
   continue;




  if (left_first == !!(flags & SYMMETRIC_LEFT))
   continue;




  id = has_commit_patch_id(commit, &ids);
  if (!id)
   continue;

  commit->object.flags |= cherry_flag;
  id->commit->object.flags |= cherry_flag;
 }

 free_patch_ids(&ids);
}
