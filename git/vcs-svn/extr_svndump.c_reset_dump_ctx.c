
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; int uuid; int url; } ;


 TYPE_1__ dump_ctx ;
 int strbuf_addstr (int *,char const*) ;
 int strbuf_reset (int *) ;

__attribute__((used)) static void reset_dump_ctx(const char *url)
{
 strbuf_reset(&dump_ctx.url);
 if (url)
  strbuf_addstr(&dump_ctx.url, url);
 dump_ctx.version = 1;
 strbuf_reset(&dump_ctx.uuid);
}
