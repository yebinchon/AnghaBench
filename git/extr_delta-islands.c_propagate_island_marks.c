
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct island_bitmap {int dummy; } ;
struct commit_list {TYPE_1__* item; struct commit_list* next; } ;
struct TYPE_5__ {int oid; } ;
struct commit {struct commit_list* parents; TYPE_2__ object; } ;
typedef scalar_t__ khiter_t ;
struct TYPE_6__ {int object; } ;
struct TYPE_4__ {int object; } ;


 TYPE_3__* get_commit_tree (struct commit*) ;
 int island_marks ;
 scalar_t__ kh_end (int ) ;
 scalar_t__ kh_get_oid_map (int ,int ) ;
 struct island_bitmap* kh_value (int ,scalar_t__) ;
 int parse_commit (struct commit*) ;
 int set_island_marks (int *,struct island_bitmap*) ;

void propagate_island_marks(struct commit *commit)
{
 khiter_t pos = kh_get_oid_map(island_marks, commit->object.oid);

 if (pos < kh_end(island_marks)) {
  struct commit_list *p;
  struct island_bitmap *root_marks = kh_value(island_marks, pos);

  parse_commit(commit);
  set_island_marks(&get_commit_tree(commit)->object, root_marks);
  for (p = commit->parents; p; p = p->next)
   set_island_marks(&p->item->object, root_marks);
 }
}
