
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct git_graph {TYPE_2__* revs; } ;
struct TYPE_3__ {int file; } ;
struct TYPE_4__ {TYPE_1__ diffopt; } ;


 struct strbuf STRBUF_INIT ;
 int default_diffopt ;
 int fwrite (int ,int,int ,int ) ;
 int graph_next_line (struct git_graph*,struct strbuf*) ;
 int graph_show_line_prefix (int ) ;
 int strbuf_release (struct strbuf*) ;

void graph_show_oneline(struct git_graph *graph)
{
 struct strbuf msgbuf = STRBUF_INIT;

 graph_show_line_prefix(default_diffopt);

 if (!graph)
  return;

 graph_next_line(graph, &msgbuf);
 fwrite(msgbuf.buf, sizeof(char), msgbuf.len, graph->revs->diffopt.file);
 strbuf_release(&msgbuf);
}
