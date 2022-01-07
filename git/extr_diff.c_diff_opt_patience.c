
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {int anchors_nr; int * anchors; int xdl_opts; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int DIFF_WITH_ALG (struct diff_options*,int ) ;
 int PATIENCE_DIFF ;
 int free (int ) ;

__attribute__((used)) static int diff_opt_patience(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;
 int i;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 options->xdl_opts = DIFF_WITH_ALG(options, PATIENCE_DIFF);





 for (i = 0; i < options->anchors_nr; i++)
  free(options->anchors[i]);
 options->anchors_nr = 0;
 return 0;
}
