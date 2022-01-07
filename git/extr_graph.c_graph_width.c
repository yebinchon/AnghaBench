
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int width; } ;



int graph_width(struct git_graph *graph)
{
 return graph->width;
}
