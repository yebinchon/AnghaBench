
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int url; int uuid; } ;
struct TYPE_5__ {int dst; int src; } ;
struct TYPE_4__ {int note; int author; int log; } ;


 TYPE_3__ dump_ctx ;
 int fast_export_init (int) ;
 TYPE_2__ node_ctx ;
 int reset_dump_ctx (int *) ;
 int reset_node_ctx (int *) ;
 int reset_rev_ctx (int ) ;
 TYPE_1__ rev_ctx ;
 int strbuf_init (int *,int) ;

__attribute__((used)) static void init(int report_fd)
{
 fast_export_init(report_fd);
 strbuf_init(&dump_ctx.uuid, 4096);
 strbuf_init(&dump_ctx.url, 4096);
 strbuf_init(&rev_ctx.log, 4096);
 strbuf_init(&rev_ctx.author, 4096);
 strbuf_init(&rev_ctx.note, 4096);
 strbuf_init(&node_ctx.src, 4096);
 strbuf_init(&node_ctx.dst, 4096);
 reset_dump_ctx(((void*)0));
 reset_rev_ctx(0);
 reset_node_ctx(((void*)0));
 return;
}
