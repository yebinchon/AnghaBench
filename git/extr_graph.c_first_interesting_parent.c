
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_graph {TYPE_1__* commit; } ;
struct commit_list {int item; } ;
struct TYPE_2__ {struct commit_list* parents; } ;


 scalar_t__ graph_is_interesting (struct git_graph*,int ) ;
 struct commit_list* next_interesting_parent (struct git_graph*,struct commit_list*) ;

__attribute__((used)) static struct commit_list *first_interesting_parent(struct git_graph *graph)
{
 struct commit_list *parents = graph->commit->parents;




 if (!parents)
  return ((void*)0);




 if (graph_is_interesting(graph, parents->item))
  return parents;





 return next_interesting_parent(graph, parents);
}
