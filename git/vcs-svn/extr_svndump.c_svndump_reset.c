
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int url; int uuid; } ;
struct TYPE_3__ {int author; int log; } ;


 TYPE_2__ dump_ctx ;
 TYPE_1__ rev_ctx ;
 int strbuf_release (int *) ;

void svndump_reset(void)
{
 strbuf_release(&dump_ctx.uuid);
 strbuf_release(&dump_ctx.url);
 strbuf_release(&rev_ctx.log);
 strbuf_release(&rev_ctx.author);
}
