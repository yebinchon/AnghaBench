
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int reverse_output_stage; int linear; int * previous_parents; scalar_t__ graph; scalar_t__ track_linear; struct commit_list* commits; scalar_t__ reverse; } ;
struct commit_list {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int TRACK_LINEAR ;
 int commit_list_insert (struct commit*,struct commit_list**) ;
 int free_commit_list (int *) ;
 int free_saved_parents (struct rev_info*) ;
 struct commit* get_revision_internal (struct rev_info*) ;
 int graph_update (scalar_t__,struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;

struct commit *get_revision(struct rev_info *revs)
{
 struct commit *c;
 struct commit_list *reversed;

 if (revs->reverse) {
  reversed = ((void*)0);
  while ((c = get_revision_internal(revs)))
   commit_list_insert(c, &reversed);
  revs->commits = reversed;
  revs->reverse = 0;
  revs->reverse_output_stage = 1;
 }

 if (revs->reverse_output_stage) {
  c = pop_commit(&revs->commits);
  if (revs->track_linear)
   revs->linear = !!(c && c->object.flags & TRACK_LINEAR);
  return c;
 }

 c = get_revision_internal(revs);
 if (c && revs->graph)
  graph_update(revs->graph, c);
 if (!c) {
  free_saved_parents(revs);
  if (revs->previous_parents) {
   free_commit_list(revs->previous_parents);
   revs->previous_parents = ((void*)0);
  }
 }
 return c;
}
