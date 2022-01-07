
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct negotiation_state {int non_common_revs; int rev_list; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int COMMON ;
 scalar_t__ parse_commit (struct commit*) ;
 int prio_queue_put (int *,struct commit*) ;

__attribute__((used)) static void rev_list_push(struct negotiation_state *ns,
     struct commit *commit, int mark)
{
 if (!(commit->object.flags & mark)) {
  commit->object.flags |= mark;

  if (parse_commit(commit))
   return;

  prio_queue_put(&ns->rev_list, commit);

  if (!(commit->object.flags & COMMON))
   ns->non_common_revs++;
 }
}
