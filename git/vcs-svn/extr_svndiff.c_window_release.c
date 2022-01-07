
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int data; int instructions; int out; } ;


 int strbuf_release (int *) ;

__attribute__((used)) static void window_release(struct window *ctx)
{
 strbuf_release(&ctx->out);
 strbuf_release(&ctx->instructions);
 strbuf_release(&ctx->data);
}
