
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int default_column_color; } ;


 int column_colors_max ;

__attribute__((used)) static void graph_increment_column_color(struct git_graph *graph)
{
 graph->default_column_color = (graph->default_column_color + 1) %
  column_colors_max;
}
