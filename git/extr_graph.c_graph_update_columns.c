
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_graph {int num_columns; int num_new_columns; int num_parents; int mapping_size; int* mapping; int commit_index; struct commit* commit; TYPE_1__* columns; int new_columns; } ;
struct commit_list {struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit* commit; } ;


 int SWAP (TYPE_1__*,int ) ;
 struct commit_list* first_interesting_parent (struct git_graph*) ;
 int graph_ensure_capacity (struct git_graph*,int) ;
 int graph_increment_column_color (struct git_graph*) ;
 int graph_insert_into_new_columns (struct git_graph*,struct commit*,int*) ;
 int graph_update_width (struct git_graph*,int) ;
 struct commit_list* next_interesting_parent (struct git_graph*,struct commit_list*) ;

__attribute__((used)) static void graph_update_columns(struct git_graph *graph)
{
 struct commit_list *parent;
 int max_new_columns;
 int mapping_idx;
 int i, seen_this, is_commit_in_columns;
 SWAP(graph->columns, graph->new_columns);
 graph->num_columns = graph->num_new_columns;
 graph->num_new_columns = 0;
 max_new_columns = graph->num_columns + graph->num_parents;
 graph_ensure_capacity(graph, max_new_columns);




 graph->mapping_size = 2 * max_new_columns;
 for (i = 0; i < graph->mapping_size; i++)
  graph->mapping[i] = -1;
 seen_this = 0;
 mapping_idx = 0;
 is_commit_in_columns = 1;
 for (i = 0; i <= graph->num_columns; i++) {
  struct commit *col_commit;
  if (i == graph->num_columns) {
   if (seen_this)
    break;
   is_commit_in_columns = 0;
   col_commit = graph->commit;
  } else {
   col_commit = graph->columns[i].commit;
  }

  if (col_commit == graph->commit) {
   int old_mapping_idx = mapping_idx;
   seen_this = 1;
   graph->commit_index = i;
   for (parent = first_interesting_parent(graph);
        parent;
        parent = next_interesting_parent(graph, parent)) {





    if (graph->num_parents > 1 ||
        !is_commit_in_columns) {
     graph_increment_column_color(graph);
    }
    graph_insert_into_new_columns(graph,
             parent->item,
             &mapping_idx);
   }






   if (mapping_idx == old_mapping_idx)
    mapping_idx += 2;
  } else {
   graph_insert_into_new_columns(graph, col_commit,
            &mapping_idx);
  }
 }




 while (graph->mapping_size > 1 &&
        graph->mapping[graph->mapping_size - 1] < 0)
  graph->mapping_size--;




 graph_update_width(graph, is_commit_in_columns);
}
