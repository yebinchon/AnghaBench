
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int parseopts; } ;


 int PARSE_OPT_KEEP_DASHDASH ;
 int PARSE_OPT_KEEP_UNKNOWN ;
 int PARSE_OPT_NO_INTERNAL_HELP ;
 int PARSE_OPT_ONE_SHOT ;
 int PARSE_OPT_STOP_AT_NON_OPTION ;
 int parse_options (int,char const**,char const*,int ,int *,int) ;

int diff_opt_parse(struct diff_options *options,
     const char **av, int ac, const char *prefix)
{
 if (!prefix)
  prefix = "";

 ac = parse_options(ac, av, prefix, options->parseopts, ((void*)0),
      PARSE_OPT_KEEP_DASHDASH |
      PARSE_OPT_KEEP_UNKNOWN |
      PARSE_OPT_NO_INTERNAL_HELP |
      PARSE_OPT_ONE_SHOT |
      PARSE_OPT_STOP_AT_NON_OPTION);

 return ac;
}
