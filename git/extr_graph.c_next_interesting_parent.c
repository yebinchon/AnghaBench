
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_graph {TYPE_1__* revs; } ;
struct commit_list {int item; struct commit_list* next; } ;
struct TYPE_2__ {scalar_t__ first_parent_only; } ;


 scalar_t__ graph_is_interesting (struct git_graph*,int ) ;

__attribute__((used)) static struct commit_list *next_interesting_parent(struct git_graph *graph,
         struct commit_list *orig)
{
 struct commit_list *list;





 if (graph->revs->first_parent_only)
  return ((void*)0);




 for (list = orig->next; list; list = list->next) {
  if (graph_is_interesting(graph, list->item))
   return list;
 }

 return ((void*)0);
}
