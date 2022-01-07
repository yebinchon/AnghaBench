
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;
struct git_graph {int dummy; } ;
typedef int FILE ;


 int graph_is_commit_finished (struct git_graph*) ;
 int graph_show_remainder (struct git_graph*) ;
 int graph_show_strbuf (struct git_graph*,int *,struct strbuf const*) ;
 int putc (char,int *) ;

void graph_show_commit_msg(struct git_graph *graph,
      FILE *file,
      struct strbuf const *sb)
{
 int newline_terminated;




 graph_show_strbuf(graph, file, sb);

 if (!graph)
  return;

 newline_terminated = (sb->len && sb->buf[sb->len - 1] == '\n');




 if (!graph_is_commit_finished(graph)) {





  if (!newline_terminated)
   putc('\n', file);

  graph_show_remainder(graph);




  if (newline_terminated)
   putc('\n', file);
 }
}
