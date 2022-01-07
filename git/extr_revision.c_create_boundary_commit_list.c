
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_array {unsigned int nr; struct object_array_entry* objects; } ;
struct rev_info {int sort_order; int * commits; struct object_array boundary_commits; } ;
struct object_array_entry {scalar_t__ item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int BOUNDARY ;
 int CHILD_SHOWN ;
 int SHOWN ;
 int commit_list_insert (struct commit*,int **) ;
 int free_commit_list (int *) ;
 int sort_in_topological_order (int **,int ) ;

__attribute__((used)) static void create_boundary_commit_list(struct rev_info *revs)
{
 unsigned i;
 struct commit *c;
 struct object_array *array = &revs->boundary_commits;
 struct object_array_entry *objects = array->objects;







 if (revs->commits) {
  free_commit_list(revs->commits);
  revs->commits = ((void*)0);
 }





 for (i = 0; i < array->nr; i++) {
  c = (struct commit *)(objects[i].item);
  if (!c)
   continue;
  if (!(c->object.flags & CHILD_SHOWN))
   continue;
  if (c->object.flags & (SHOWN | BOUNDARY))
   continue;
  c->object.flags |= BOUNDARY;
  commit_list_insert(c, &revs->commits);
 }





 sort_in_topological_order(&revs->commits, revs->sort_order);
}
