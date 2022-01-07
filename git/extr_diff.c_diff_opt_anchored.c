
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct diff_options* value; } ;
struct diff_options {scalar_t__ anchors_nr; int * anchors; int anchors_alloc; int xdl_opts; } ;


 int ALLOC_GROW (int *,scalar_t__,int ) ;
 int BUG_ON_OPT_NEG (int) ;
 int DIFF_WITH_ALG (struct diff_options*,int ) ;
 int PATIENCE_DIFF ;
 int xstrdup (char const*) ;

__attribute__((used)) static int diff_opt_anchored(const struct option *opt,
        const char *arg, int unset)
{
 struct diff_options *options = opt->value;

 BUG_ON_OPT_NEG(unset);
 options->xdl_opts = DIFF_WITH_ALG(options, PATIENCE_DIFF);
 ALLOC_GROW(options->anchors, options->anchors_nr + 1,
     options->anchors_alloc);
 options->anchors[options->anchors_nr++] = xstrdup(arg);
 return 0;
}
