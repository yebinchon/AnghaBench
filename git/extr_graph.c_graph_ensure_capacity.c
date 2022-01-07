
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int column_capacity; int new_mapping; int mapping; int new_columns; int columns; } ;


 int REALLOC_ARRAY (int ,int) ;

__attribute__((used)) static void graph_ensure_capacity(struct git_graph *graph, int num_columns)
{
 if (graph->column_capacity >= num_columns)
  return;

 do {
  graph->column_capacity *= 2;
 } while (graph->column_capacity < num_columns);

 REALLOC_ARRAY(graph->columns, graph->column_capacity);
 REALLOC_ARRAY(graph->new_columns, graph->column_capacity);
 REALLOC_ARRAY(graph->mapping, graph->column_capacity * 2);
 REALLOC_ARRAY(graph->new_mapping, graph->column_capacity * 2);
}
