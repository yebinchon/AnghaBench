
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {long xdl_opts; } ;


 int BUG_ON_OPT_NEG (int) ;
 int DIFF_XDL_CLR (struct diff_options*,int ) ;
 int NEED_MINIMAL ;
 long XDF_DIFF_ALGORITHM_MASK ;
 int _ (char*) ;
 int error (int ) ;
 long parse_algorithm_value (char const*) ;

__attribute__((used)) static int diff_opt_diff_algorithm(const struct option *opt,
       const char *arg, int unset)
{
 struct diff_options *options = opt->value;
 long value = parse_algorithm_value(arg);

 BUG_ON_OPT_NEG(unset);
 if (value < 0)
  return error(_("option diff-algorithm accepts \"myers\", "
          "\"minimal\", \"patience\" and \"histogram\""));


 DIFF_XDL_CLR(options, NEED_MINIMAL);
 options->xdl_opts &= ~XDF_DIFF_ALGORITHM_MASK;
 options->xdl_opts |= value;
 return 0;
}
