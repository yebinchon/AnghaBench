
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int num_parents; int commit_index; int num_columns; } ;


 int GRAPH_COMMIT ;
 int GRAPH_PRE_COMMIT ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int graph_update_state (struct git_graph*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void graph_output_skip_line(struct git_graph *graph, struct strbuf *sb)
{




 strbuf_addstr(sb, "...");
 graph_pad_horizontally(graph, sb, 3);

 if (graph->num_parents >= 3 &&
     graph->commit_index < (graph->num_columns - 1))
  graph_update_state(graph, GRAPH_PRE_COMMIT);
 else
  graph_update_state(graph, GRAPH_COMMIT);
}
