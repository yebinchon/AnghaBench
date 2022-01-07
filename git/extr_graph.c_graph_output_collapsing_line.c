
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int mapping_size; int* new_mapping; int* mapping; int * new_columns; } ;


 int GRAPH_PADDING ;
 int SWAP (int*,int*) ;
 int assert (int) ;
 scalar_t__ graph_is_mapping_correct (struct git_graph*) ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int graph_update_state (struct git_graph*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_write_column (struct strbuf*,int *,char) ;

__attribute__((used)) static void graph_output_collapsing_line(struct git_graph *graph, struct strbuf *sb)
{
 int i;
 short used_horizontal = 0;
 int horizontal_edge = -1;
 int horizontal_edge_target = -1;




 for (i = 0; i < graph->mapping_size; i++)
  graph->new_mapping[i] = -1;

 for (i = 0; i < graph->mapping_size; i++) {
  int target = graph->mapping[i];
  if (target < 0)
   continue;
  assert(target * 2 <= i);

  if (target * 2 == i) {




   assert(graph->new_mapping[i] == -1);
   graph->new_mapping[i] = target;
  } else if (graph->new_mapping[i - 1] < 0) {




   graph->new_mapping[i - 1] = target;




   if (horizontal_edge == -1) {
    int j;
    horizontal_edge = i;
    horizontal_edge_target = target;






    for (j = (target * 2)+3; j < (i - 2); j += 2)
     graph->new_mapping[j] = target;
   }
  } else if (graph->new_mapping[i - 1] == target) {
  } else {
   assert(graph->new_mapping[i - 1] > target);
   assert(graph->new_mapping[i - 2] < 0);
   assert(graph->new_mapping[i - 3] == target);
   graph->new_mapping[i - 2] = target;





   if (horizontal_edge == -1)
    horizontal_edge = i;
  }
 }




 if (graph->new_mapping[graph->mapping_size - 1] < 0)
  graph->mapping_size--;




 for (i = 0; i < graph->mapping_size; i++) {
  int target = graph->new_mapping[i];
  if (target < 0)
   strbuf_addch(sb, ' ');
  else if (target * 2 == i)
   strbuf_write_column(sb, &graph->new_columns[target], '|');
  else if (target == horizontal_edge_target &&
    i != horizontal_edge - 1) {





    if (i != (target * 2)+3)
     graph->new_mapping[i] = -1;
    used_horizontal = 1;
   strbuf_write_column(sb, &graph->new_columns[target], '_');
  } else {
   if (used_horizontal && i < horizontal_edge)
    graph->new_mapping[i] = -1;
   strbuf_write_column(sb, &graph->new_columns[target], '/');

  }
 }

 graph_pad_horizontally(graph, sb, graph->mapping_size);




 SWAP(graph->mapping, graph->new_mapping);






 if (graph_is_mapping_correct(graph))
  graph_update_state(graph, GRAPH_PADDING);
}
