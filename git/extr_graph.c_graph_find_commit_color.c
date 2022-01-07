
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct git_graph {int num_columns; TYPE_1__* columns; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {unsigned short color; struct commit const* commit; } ;


 unsigned short graph_get_current_column_color (struct git_graph const*) ;

__attribute__((used)) static unsigned short graph_find_commit_color(const struct git_graph *graph,
           const struct commit *commit)
{
 int i;
 for (i = 0; i < graph->num_columns; i++) {
  if (graph->columns[i].commit == commit)
   return graph->columns[i].color;
 }
 return graph_get_current_column_color(graph);
}
