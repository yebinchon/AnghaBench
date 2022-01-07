
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {scalar_t__ state; } ;


 scalar_t__ GRAPH_PADDING ;

int graph_is_commit_finished(struct git_graph const *graph)
{
 return (graph->state == GRAPH_PADDING);
}
