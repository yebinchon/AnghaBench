
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int num_columns; int num_parents; int width; } ;



__attribute__((used)) static void graph_update_width(struct git_graph *graph,
          int is_commit_in_existing_columns)
{
 int max_cols = graph->num_columns + graph->num_parents;





 if (graph->num_parents < 1)
  max_cols++;






 if (is_commit_in_existing_columns)
  max_cols--;




 graph->width = max_cols * 2;
}
