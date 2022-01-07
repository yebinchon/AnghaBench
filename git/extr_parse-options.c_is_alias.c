
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {char** alias_groups; } ;
struct option {int long_name; } ;


 scalar_t__ has_string (int ,char const**) ;

__attribute__((used)) static int is_alias(struct parse_opt_ctx_t *ctx,
      const struct option *one_opt,
      const struct option *another_opt)
{
 const char **group;

 if (!ctx->alias_groups)
  return 0;

 if (!one_opt->long_name || !another_opt->long_name)
  return 0;

 for (group = ctx->alias_groups; *group; group += 3) {

  if (has_string(one_opt->long_name, group) &&
      has_string(another_opt->long_name, group))
   return 1;
 }
 return 0;
}
