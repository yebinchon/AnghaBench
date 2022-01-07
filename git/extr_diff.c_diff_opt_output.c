
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int prefix; } ;
struct option {struct diff_options* value; } ;
struct diff_options {int close_file; scalar_t__ use_color; int file; } ;
typedef enum parse_opt_result { ____Placeholder_parse_opt_result } parse_opt_result ;


 int BUG_ON_OPT_NEG (int) ;
 scalar_t__ GIT_COLOR_ALWAYS ;
 scalar_t__ GIT_COLOR_NEVER ;
 int free (char*) ;
 char* prefix_filename (int ,char const*) ;
 int xfopen (char*,char*) ;

__attribute__((used)) static enum parse_opt_result diff_opt_output(struct parse_opt_ctx_t *ctx,
          const struct option *opt,
          const char *arg, int unset)
{
 struct diff_options *options = opt->value;
 char *path;

 BUG_ON_OPT_NEG(unset);
 path = prefix_filename(ctx->prefix, arg);
 options->file = xfopen(path, "w");
 options->close_file = 1;
 if (options->use_color != GIT_COLOR_ALWAYS)
  options->use_color = GIT_COLOR_NEVER;
 free(path);
 return 0;
}
