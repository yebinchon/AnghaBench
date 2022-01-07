
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int const num_parents; int num_new_columns; int num_columns; int const commit_index; int * new_columns; } ;


 int strbuf_write_column (struct strbuf*,int *,char) ;

__attribute__((used)) static int graph_draw_octopus_merge(struct git_graph *graph,
        struct strbuf *sb)
{
 const int dashless_parents = 2;
 int dashful_parents = graph->num_parents - dashless_parents;
 int added_cols = (graph->num_new_columns - graph->num_columns);
 int parent_in_old_cols = graph->num_parents - added_cols;




 int first_col = graph->commit_index + dashless_parents
     - parent_in_old_cols;

 int i;
 for (i = 0; i < dashful_parents; i++) {
  strbuf_write_column(sb, &graph->new_columns[i+first_col], '-');
  strbuf_write_column(sb, &graph->new_columns[i+first_col],
        i == dashful_parents-1 ? '.' : '-');
 }
 return 2 * dashful_parents;
}
