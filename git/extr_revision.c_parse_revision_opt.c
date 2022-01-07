
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct parse_opt_ctx_t {int argc; int * argv; int out; int cpidx; } ;
struct option {int dummy; } ;


 int error (char*,int ) ;
 int handle_revision_opt (struct rev_info*,int,int *,int *,int ,int *) ;
 int usage_with_options (char const* const*,struct option const*) ;

void parse_revision_opt(struct rev_info *revs, struct parse_opt_ctx_t *ctx,
   const struct option *options,
   const char * const usagestr[])
{
 int n = handle_revision_opt(revs, ctx->argc, ctx->argv,
        &ctx->cpidx, ctx->out, ((void*)0));
 if (n <= 0) {
  error("unknown option `%s'", ctx->argv[0]);
  usage_with_options(usagestr, options);
 }
 ctx->argv += n;
 ctx->argc -= n;
}
