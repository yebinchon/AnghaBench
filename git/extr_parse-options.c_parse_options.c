
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char** argv; char** opt; struct option* alias_groups; } ;
struct option {int dummy; } ;
typedef int ctx ;







 int _ (char*) ;
 int disallow_abbreviated_options ;
 int error (int ,char*) ;
 int exit (int) ;
 int free (struct option*) ;
 int git_env_bool (char*,int ) ;
 int isascii (char*) ;
 int memset (struct parse_opt_ctx_t*,int ,int) ;
 int parse_options_end (struct parse_opt_ctx_t*) ;
 int parse_options_start_1 (struct parse_opt_ctx_t*,int,char const**,char const*,struct option const*,int) ;
 int parse_options_step (struct parse_opt_ctx_t*,struct option const*,char const* const*) ;
 int precompose_argv (int,char const**) ;
 struct option* preprocess_options (struct parse_opt_ctx_t*,struct option const*) ;
 int usage_with_options (char const* const*,struct option const*) ;

int parse_options(int argc, const char **argv, const char *prefix,
    const struct option *options, const char * const usagestr[],
    int flags)
{
 struct parse_opt_ctx_t ctx;
 struct option *real_options;

 disallow_abbreviated_options =
  git_env_bool("GIT_TEST_DISALLOW_ABBREVIATED_OPTIONS", 0);

 memset(&ctx, 0, sizeof(ctx));
 real_options = preprocess_options(&ctx, options);
 if (real_options)
  options = real_options;
 parse_options_start_1(&ctx, argc, argv, prefix, options, flags);
 switch (parse_options_step(&ctx, options, usagestr)) {
 case 129:
 case 130:
  exit(129);
 case 132:
  exit(0);
 case 128:
 case 131:
  break;
 default:
  if (ctx.argv[0][1] == '-') {
   error(_("unknown option `%s'"), ctx.argv[0] + 2);
  } else if (isascii(*ctx.opt)) {
   error(_("unknown switch `%c'"), *ctx.opt);
  } else {
   error(_("unknown non-ascii option in string: `%s'"),
         ctx.argv[0]);
  }
  usage_with_options(usagestr, options);
 }

 precompose_argv(argc, argv);
 free(real_options);
 free(ctx.alias_groups);
 return parse_options_end(&ctx);
}
