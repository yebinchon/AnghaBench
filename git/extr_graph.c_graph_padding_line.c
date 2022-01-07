
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {scalar_t__ state; int num_columns; scalar_t__ commit; int num_parents; int prev_state; struct column* columns; } ;
struct column {scalar_t__ commit; } ;


 scalar_t__ GRAPH_COMMIT ;
 int GRAPH_PADDING ;
 int graph_next_line (struct git_graph*,struct strbuf*) ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_write_column (struct strbuf*,struct column*,char) ;

__attribute__((used)) static void graph_padding_line(struct git_graph *graph, struct strbuf *sb)
{
 int i;
 int chars_written = 0;

 if (graph->state != GRAPH_COMMIT) {
  graph_next_line(graph, sb);
  return;
 }
 for (i = 0; i < graph->num_columns; i++) {
  struct column *col = &graph->columns[i];

  strbuf_write_column(sb, col, '|');
  chars_written++;

  if (col->commit == graph->commit && graph->num_parents > 2) {
   int len = (graph->num_parents - 2) * 2;
   strbuf_addchars(sb, ' ', len);
   chars_written += len;
  } else {
   strbuf_addch(sb, ' ');
   chars_written++;
  }
 }

 graph_pad_horizontally(graph, sb, chars_written);




 graph->prev_state = GRAPH_PADDING;
}
