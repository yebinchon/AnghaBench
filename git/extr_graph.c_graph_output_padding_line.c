
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int num_new_columns; int * new_columns; int commit; } ;


 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_write_column (struct strbuf*,int *,char) ;

__attribute__((used)) static void graph_output_padding_line(struct git_graph *graph,
          struct strbuf *sb)
{
 int i;
 if (!graph->commit)
  return;




 for (i = 0; i < graph->num_new_columns; i++) {
  strbuf_write_column(sb, &graph->new_columns[i], '|');
  strbuf_addch(sb, ' ');
 }

 graph_pad_horizontally(graph, sb, graph->num_new_columns * 2);
}
