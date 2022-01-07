
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int num_parents; int prev_commit_index; int commit_index; scalar_t__ state; int num_columns; scalar_t__ expansion_row; struct commit* commit; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 scalar_t__ GRAPH_COMMIT ;
 scalar_t__ GRAPH_PADDING ;
 scalar_t__ GRAPH_PRE_COMMIT ;
 scalar_t__ GRAPH_SKIP ;
 struct commit_list* first_interesting_parent (struct git_graph*) ;
 int graph_update_columns (struct git_graph*) ;
 struct commit_list* next_interesting_parent (struct git_graph*,struct commit_list*) ;

void graph_update(struct git_graph *graph, struct commit *commit)
{
 struct commit_list *parent;




 graph->commit = commit;




 graph->num_parents = 0;
 for (parent = first_interesting_parent(graph);
      parent;
      parent = next_interesting_parent(graph, parent))
 {
  graph->num_parents++;
 }






 graph->prev_commit_index = graph->commit_index;





 graph_update_columns(graph);

 graph->expansion_row = 0;
 if (graph->state != GRAPH_PADDING)
  graph->state = GRAPH_SKIP;
 else if (graph->num_parents >= 3 &&
   graph->commit_index < (graph->num_columns - 1))
  graph->state = GRAPH_PRE_COMMIT;
 else
  graph->state = GRAPH_COMMIT;
}
