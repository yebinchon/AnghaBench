
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_graph {int prev_state; int state; } ;
typedef enum graph_state { ____Placeholder_graph_state } graph_state ;



__attribute__((used)) static void graph_update_state(struct git_graph *graph, enum graph_state s)
{
 graph->prev_state = graph->state;
 graph->state = s;
}
