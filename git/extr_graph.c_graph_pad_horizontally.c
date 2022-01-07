
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct git_graph {int width; } ;


 int strbuf_addchars (struct strbuf*,char,int) ;

__attribute__((used)) static void graph_pad_horizontally(struct git_graph *graph, struct strbuf *sb,
       int chars_written)
{







 if (chars_written < graph->width)
  strbuf_addchars(sb, ' ', graph->width - chars_written);
}
