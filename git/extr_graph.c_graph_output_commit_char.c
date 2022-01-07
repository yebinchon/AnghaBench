
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct git_graph {TYPE_3__* commit; TYPE_2__* revs; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ object; } ;
struct TYPE_5__ {int boundary; } ;


 int BOUNDARY ;
 int assert (int ) ;
 int get_revision_mark (TYPE_2__*,TYPE_3__*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void graph_output_commit_char(struct git_graph *graph, struct strbuf *sb)
{




 if (graph->commit->object.flags & BOUNDARY) {
  assert(graph->revs->boundary);
  strbuf_addch(sb, 'o');
  return;
 }




 strbuf_addstr(sb, get_revision_mark(graph->revs, graph->commit));
}
