
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int state; } ;
 int assert (int ) ;
 int graph_output_collapsing_line (struct git_graph*,struct strbuf*) ;
 int graph_output_commit_line (struct git_graph*,struct strbuf*) ;
 int graph_output_padding_line (struct git_graph*,struct strbuf*) ;
 int graph_output_post_merge_line (struct git_graph*,struct strbuf*) ;
 int graph_output_pre_commit_line (struct git_graph*,struct strbuf*) ;
 int graph_output_skip_line (struct git_graph*,struct strbuf*) ;

int graph_next_line(struct git_graph *graph, struct strbuf *sb)
{
 switch (graph->state) {
 case 131:
  graph_output_padding_line(graph, sb);
  return 0;
 case 128:
  graph_output_skip_line(graph, sb);
  return 0;
 case 129:
  graph_output_pre_commit_line(graph, sb);
  return 0;
 case 132:
  graph_output_commit_line(graph, sb);
  return 1;
 case 130:
  graph_output_post_merge_line(graph, sb);
  return 0;
 case 133:
  graph_output_collapsing_line(graph, sb);
  return 0;
 }

 assert(0);
 return 0;
}
