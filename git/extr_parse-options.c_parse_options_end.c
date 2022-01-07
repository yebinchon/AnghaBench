
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int flags; int total; size_t argc; int cpidx; int ** out; int argv; } ;


 int MOVE_ARRAY (int **,int ,size_t) ;
 int PARSE_OPT_ONE_SHOT ;

int parse_options_end(struct parse_opt_ctx_t *ctx)
{
 if (ctx->flags & PARSE_OPT_ONE_SHOT)
  return ctx->total - ctx->argc;

 MOVE_ARRAY(ctx->out + ctx->cpidx, ctx->argv, ctx->argc);
 ctx->out[ctx->cpidx + ctx->argc] = ((void*)0);
 return ctx->cpidx + ctx->argc;
}
