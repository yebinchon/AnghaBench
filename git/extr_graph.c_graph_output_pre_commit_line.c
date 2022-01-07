
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int num_parents; int expansion_row; int num_columns; scalar_t__ commit; scalar_t__ prev_state; int prev_commit_index; struct column* columns; } ;
struct column {scalar_t__ commit; } ;


 int GRAPH_COMMIT ;
 scalar_t__ GRAPH_POST_MERGE ;
 int assert (int) ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int graph_update_state (struct git_graph*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_write_column (struct strbuf*,struct column*,char) ;

__attribute__((used)) static void graph_output_pre_commit_line(struct git_graph *graph,
      struct strbuf *sb)
{
 int num_expansion_rows;
 int i, seen_this;
 int chars_written;
 assert(graph->num_parents >= 3);
 num_expansion_rows = (graph->num_parents - 2) * 2;





 assert(0 <= graph->expansion_row &&
        graph->expansion_row < num_expansion_rows);




 seen_this = 0;
 chars_written = 0;
 for (i = 0; i < graph->num_columns; i++) {
  struct column *col = &graph->columns[i];
  if (col->commit == graph->commit) {
   seen_this = 1;
   strbuf_write_column(sb, col, '|');
   strbuf_addchars(sb, ' ', graph->expansion_row);
   chars_written += 1 + graph->expansion_row;
  } else if (seen_this && (graph->expansion_row == 0)) {
   if (graph->prev_state == GRAPH_POST_MERGE &&
       graph->prev_commit_index < i)
    strbuf_write_column(sb, col, '\\');
   else
    strbuf_write_column(sb, col, '|');
   chars_written++;
  } else if (seen_this && (graph->expansion_row > 0)) {
   strbuf_write_column(sb, col, '\\');
   chars_written++;
  } else {
   strbuf_write_column(sb, col, '|');
   chars_written++;
  }
  strbuf_addch(sb, ' ');
  chars_written++;
 }

 graph_pad_horizontally(graph, sb, chars_written);





 graph->expansion_row++;
 if (graph->expansion_row >= num_expansion_rows)
  graph_update_state(graph, GRAPH_COMMIT);
}
