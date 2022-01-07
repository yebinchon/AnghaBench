
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int num_columns; int num_parents; struct commit* commit; struct commit_list* columns; } ;
struct commit_list {int item; struct commit* commit; } ;
struct commit {int dummy; } ;
struct column {int item; struct commit* commit; } ;


 int GRAPH_COLLAPSING ;
 int GRAPH_PADDING ;
 int assert (struct commit_list*) ;
 struct commit_list* find_new_column_by_commit (struct git_graph*,int ) ;
 struct commit_list* first_interesting_parent (struct git_graph*) ;
 scalar_t__ graph_is_mapping_correct (struct git_graph*) ;
 int graph_pad_horizontally (struct git_graph*,struct strbuf*,int) ;
 int graph_update_state (struct git_graph*,int ) ;
 struct commit_list* next_interesting_parent (struct git_graph*,struct commit_list*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_write_column (struct strbuf*,struct commit_list*,char) ;

__attribute__((used)) static void graph_output_post_merge_line(struct git_graph *graph, struct strbuf *sb)
{
 int seen_this = 0;
 int i, j, chars_written;




 chars_written = 0;
 for (i = 0; i <= graph->num_columns; i++) {
  struct column *col = &graph->columns[i];
  struct commit *col_commit;
  if (i == graph->num_columns) {
   if (seen_this)
    break;
   col_commit = graph->commit;
  } else {
   col_commit = col->commit;
  }

  if (col_commit == graph->commit) {






   struct commit_list *parents = ((void*)0);
   struct column *par_column;
   seen_this = 1;
   parents = first_interesting_parent(graph);
   assert(parents);
   par_column = find_new_column_by_commit(graph, parents->item);
   assert(par_column);

   strbuf_write_column(sb, par_column, '|');
   chars_written++;
   for (j = 0; j < graph->num_parents - 1; j++) {
    parents = next_interesting_parent(graph, parents);
    assert(parents);
    par_column = find_new_column_by_commit(graph, parents->item);
    assert(par_column);
    strbuf_write_column(sb, par_column, '\\');
    strbuf_addch(sb, ' ');
   }
   chars_written += j * 2;
  } else if (seen_this) {
   strbuf_write_column(sb, col, '\\');
   strbuf_addch(sb, ' ');
   chars_written += 2;
  } else {
   strbuf_write_column(sb, col, '|');
   strbuf_addch(sb, ' ');
   chars_written += 2;
  }
 }

 graph_pad_horizontally(graph, sb, chars_written);




 if (graph_is_mapping_correct(graph))
  graph_update_state(graph, GRAPH_PADDING);
 else
  graph_update_state(graph, GRAPH_COLLAPSING);
}
