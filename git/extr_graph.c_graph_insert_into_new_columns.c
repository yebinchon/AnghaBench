
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_graph {int num_new_columns; int* mapping; TYPE_1__* new_columns; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int color; struct commit* commit; } ;


 int graph_find_commit_color (struct git_graph*,struct commit*) ;

__attribute__((used)) static void graph_insert_into_new_columns(struct git_graph *graph,
       struct commit *commit,
       int *mapping_index)
{
 int i;





 for (i = 0; i < graph->num_new_columns; i++) {
  if (graph->new_columns[i].commit == commit) {
   graph->mapping[*mapping_index] = i;
   *mapping_index += 2;
   return;
  }
 }




 graph->new_columns[graph->num_new_columns].commit = commit;
 graph->new_columns[graph->num_new_columns].color = graph_find_commit_color(graph, commit);
 graph->mapping[*mapping_index] = graph->num_new_columns;
 *mapping_index += 2;
 graph->num_new_columns++;
}
