
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prop_length; int text_length; scalar_t__ prop_delta; scalar_t__ text_delta; int dst; scalar_t__ srcRev; int src; int action; scalar_t__ type; } ;


 int NODEACT_UNKNOWN ;
 TYPE_1__ node_ctx ;
 int strbuf_addstr (int *,char*) ;
 int strbuf_reset (int *) ;

__attribute__((used)) static void reset_node_ctx(char *fname)
{
 node_ctx.type = 0;
 node_ctx.action = NODEACT_UNKNOWN;
 node_ctx.prop_length = -1;
 node_ctx.text_length = -1;
 strbuf_reset(&node_ctx.src);
 node_ctx.srcRev = 0;
 strbuf_reset(&node_ctx.dst);
 if (fname)
  strbuf_addstr(&node_ctx.dst, fname);
 node_ctx.text_delta = 0;
 node_ctx.prop_delta = 0;
}
