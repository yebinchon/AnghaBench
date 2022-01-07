
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int flags; char const* opt; int argc; char** argv; int total; char** out; int cpidx; } ;
struct option {int dummy; } ;


 int BUG (char*) ;




 int PARSE_OPT_KEEP_DASHDASH ;
 int PARSE_OPT_KEEP_UNKNOWN ;

 int PARSE_OPT_NO_INTERNAL_HELP ;
 int PARSE_OPT_ONE_SHOT ;
 int PARSE_OPT_STOP_AT_NON_OPTION ;

 int check_typos (char const*,struct option const*) ;
 int parse_long_opt (struct parse_opt_ctx_t*,char const*,struct option const*) ;
 scalar_t__ parse_nodash_opt (struct parse_opt_ctx_t*,char const*,struct option const*) ;
 int parse_short_opt (struct parse_opt_ctx_t*,struct option const*) ;
 int show_gitcomp (struct option const*) ;
 int strcmp (char const*,char*) ;
 int usage_with_options_internal (struct parse_opt_ctx_t*,char const* const*,struct option const*,int,int ) ;
 char* xstrdup (char*) ;

int parse_options_step(struct parse_opt_ctx_t *ctx,
         const struct option *options,
         const char * const usagestr[])
{
 int internal_help = !(ctx->flags & PARSE_OPT_NO_INTERNAL_HELP);


 ctx->opt = ((void*)0);

 for (; ctx->argc; ctx->argc--, ctx->argv++) {
  const char *arg = ctx->argv[0];

  if (ctx->flags & PARSE_OPT_ONE_SHOT &&
      ctx->argc != ctx->total)
   break;

  if (*arg != '-' || !arg[1]) {
   if (parse_nodash_opt(ctx, arg, options) == 0)
    continue;
   if (ctx->flags & PARSE_OPT_STOP_AT_NON_OPTION)
    return 129;
   ctx->out[ctx->cpidx++] = ctx->argv[0];
   continue;
  }


  if (internal_help && ctx->total == 1 && !strcmp(arg + 1, "h"))
   goto show_usage;


  if (ctx->total == 1 && !strcmp(arg + 1, "-git-completion-helper"))
   return show_gitcomp(options);

  if (arg[1] != '-') {
   ctx->opt = arg + 1;
   switch (parse_short_opt(ctx, options)) {
   case 131:
    return 131;
   case 128:
    if (ctx->opt)
     check_typos(arg + 1, options);
    if (internal_help && *ctx->opt == 'h')
     goto show_usage;
    goto unknown;
   case 129:
   case 130:
   case 133:
    BUG("parse_short_opt() cannot return these");
   case 132:
    break;
   }
   if (ctx->opt)
    check_typos(arg + 1, options);
   while (ctx->opt) {
    switch (parse_short_opt(ctx, options)) {
    case 131:
     return 131;
    case 128:
     if (internal_help && *ctx->opt == 'h')
      goto show_usage;






     ctx->argv[0] = xstrdup(ctx->opt - 1);
     *(char *)ctx->argv[0] = '-';
     goto unknown;
    case 129:
    case 133:
    case 130:
     BUG("parse_short_opt() cannot return these");
    case 132:
     break;
    }
   }
   continue;
  }

  if (!arg[2] ||
      !strcmp(arg + 2, "end-of-options")) {
   if (!(ctx->flags & PARSE_OPT_KEEP_DASHDASH)) {
    ctx->argc--;
    ctx->argv++;
   }
   break;
  }

  if (internal_help && !strcmp(arg + 2, "help-all"))
   return usage_with_options_internal(ctx, usagestr, options, 1, 0);
  if (internal_help && !strcmp(arg + 2, "help"))
   goto show_usage;
  switch (parse_long_opt(ctx, arg + 2, options)) {
  case 131:
   return 131;
  case 128:
   goto unknown;
  case 130:
   goto show_usage;
  case 129:
  case 133:
   BUG("parse_long_opt() cannot return these");
  case 132:
   break;
  }
  continue;
unknown:
  if (ctx->flags & PARSE_OPT_ONE_SHOT)
   break;
  if (!(ctx->flags & PARSE_OPT_KEEP_UNKNOWN))
   return 128;
  ctx->out[ctx->cpidx++] = ctx->argv[0];
  ctx->opt = ((void*)0);
 }
 return 132;

 show_usage:
 return usage_with_options_internal(ctx, usagestr, options, 0, 0);
}
