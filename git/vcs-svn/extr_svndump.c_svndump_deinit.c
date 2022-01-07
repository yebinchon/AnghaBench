
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int note; int author; int log; } ;


 scalar_t__ buffer_deinit (int *) ;
 int fast_export_deinit () ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*) ;
 int input ;
 TYPE_2__ node_ctx ;
 int reset_dump_ctx (int *) ;
 int reset_node_ctx (int *) ;
 int reset_rev_ctx (int ) ;
 TYPE_1__ rev_ctx ;
 int stderr ;
 int stdout ;
 int strbuf_release (int *) ;

void svndump_deinit(void)
{
 fast_export_deinit();
 reset_dump_ctx(((void*)0));
 reset_rev_ctx(0);
 reset_node_ctx(((void*)0));
 strbuf_release(&rev_ctx.log);
 strbuf_release(&rev_ctx.author);
 strbuf_release(&rev_ctx.note);
 strbuf_release(&node_ctx.src);
 strbuf_release(&node_ctx.dst);
 if (buffer_deinit(&input))
  fprintf(stderr, "Input error\n");
 if (ferror(stdout))
  fprintf(stderr, "Output error\n");
}
