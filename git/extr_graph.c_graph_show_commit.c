
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct git_graph {TYPE_1__* revs; } ;
struct TYPE_5__ {int file; } ;
struct TYPE_4__ {TYPE_2__ diffopt; } ;


 struct strbuf STRBUF_INIT ;
 TYPE_2__* default_diffopt ;
 int fwrite (int ,int,int ,int ) ;
 scalar_t__ graph_is_commit_finished (struct git_graph*) ;
 int graph_next_line (struct git_graph*,struct strbuf*) ;
 int graph_show_line_prefix (TYPE_2__*) ;
 int graph_show_padding (struct git_graph*) ;
 int putc (char,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;

void graph_show_commit(struct git_graph *graph)
{
 struct strbuf msgbuf = STRBUF_INIT;
 int shown_commit_line = 0;

 graph_show_line_prefix(default_diffopt);

 if (!graph)
  return;






 if (graph_is_commit_finished(graph)) {
  graph_show_padding(graph);
  shown_commit_line = 1;
 }

 while (!shown_commit_line && !graph_is_commit_finished(graph)) {
  shown_commit_line = graph_next_line(graph, &msgbuf);
  fwrite(msgbuf.buf, sizeof(char), msgbuf.len,
   graph->revs->diffopt.file);
  if (!shown_commit_line) {
   putc('\n', graph->revs->diffopt.file);
   graph_show_line_prefix(&graph->revs->diffopt);
  }
  strbuf_setlen(&msgbuf, 0);
 }

 strbuf_release(&msgbuf);
}
