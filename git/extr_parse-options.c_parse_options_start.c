
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int dummy; } ;
struct option {int dummy; } ;


 int memset (struct parse_opt_ctx_t*,int ,int) ;
 int parse_options_start_1 (struct parse_opt_ctx_t*,int,char const**,char const*,struct option const*,int) ;

void parse_options_start(struct parse_opt_ctx_t *ctx,
    int argc, const char **argv, const char *prefix,
    const struct option *options, int flags)
{
 memset(ctx, 0, sizeof(*ctx));
 parse_options_start_1(ctx, argc, argv, prefix, options, flags);
}
