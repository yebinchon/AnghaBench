
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int num_columns; int num_parents; scalar_t__ prev_state; int prev_commit_index; struct commit* commit; struct column* columns; } ;
struct commit {int dummy; } ;
struct column {struct commit* commit; } ;


 scalar_t__ GRAPH_COLLAPSING ;
 scalar_t__ GRAPH_PADDING ;
 scalar_t__ GRAPH_POST_MERGE ;
 scalar_t__ graph_draw_octopus_merge (struct git_graph*,struct strbuf*) ;
 scalar_t__ graph_is_mapping_correct (struct git_graph*) ;
 int graph_output_commit_char (struct git_graph*,struct strbuf*) ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int graph_update_state (struct git_graph*,scalar_t__) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_write_column (struct strbuf*,struct column*,char) ;

__attribute__((used)) static void graph_output_commit_line(struct git_graph *graph, struct strbuf *sb)
{
 int seen_this = 0;
 int i, chars_written;
 seen_this = 0;
 chars_written = 0;
 for (i = 0; i <= graph->num_columns; i++) {
  struct column *col = &graph->columns[i];
  struct commit *col_commit;
  if (i == graph->num_columns) {
   if (seen_this)
    break;
   col_commit = graph->commit;
  } else {
   col_commit = graph->columns[i].commit;
  }

  if (col_commit == graph->commit) {
   seen_this = 1;
   graph_output_commit_char(graph, sb);
   chars_written++;

   if (graph->num_parents > 2)
    chars_written += graph_draw_octopus_merge(graph,
           sb);
  } else if (seen_this && (graph->num_parents > 2)) {
   strbuf_write_column(sb, col, '\\');
   chars_written++;
  } else if (seen_this && (graph->num_parents == 2)) {
   if (graph->prev_state == GRAPH_POST_MERGE &&
       graph->prev_commit_index < i)
    strbuf_write_column(sb, col, '\\');
   else
    strbuf_write_column(sb, col, '|');
   chars_written++;
  } else {
   strbuf_write_column(sb, col, '|');
   chars_written++;
  }
  strbuf_addch(sb, ' ');
  chars_written++;
 }

 graph_pad_horizontally(graph, sb, chars_written);




 if (graph->num_parents > 1)
  graph_update_state(graph, GRAPH_POST_MERGE);
 else if (graph_is_mapping_correct(graph))
  graph_update_state(graph, GRAPH_PADDING);
 else
  graph_update_state(graph, GRAPH_COLLAPSING);
}
