
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct git_graph {TYPE_2__* revs; } ;
struct TYPE_3__ {int flags; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_4__ {scalar_t__ boundary; } ;


 int CHILD_SHOWN ;
 scalar_t__ commit_show ;
 scalar_t__ get_commit_action (TYPE_2__*,struct commit*) ;

__attribute__((used)) static int graph_is_interesting(struct git_graph *graph, struct commit *commit)
{





 if (graph->revs && graph->revs->boundary) {
  if (commit->object.flags & CHILD_SHOWN)
   return 1;
 }





 return get_commit_action(graph->revs, commit) == commit_show;
}
