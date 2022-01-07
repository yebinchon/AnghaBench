
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {char const* line_prefix; int line_prefix_length; } ;


 int BUG_ON_OPT_NEG (int) ;
 int graph_setup_line_prefix (struct diff_options*) ;
 int strlen (char const*) ;

__attribute__((used)) static int diff_opt_line_prefix(const struct option *opt,
    const char *optarg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 options->line_prefix = optarg;
 options->line_prefix_length = strlen(options->line_prefix);
 graph_setup_line_prefix(options);
 return 0;
}
